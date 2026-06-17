package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
)

var (
	versionRe = regexp.MustCompile(`(?m)^\s*version\s+"([^"]*)"`)
	dualRe    = regexp.MustCompile(`(?m)^\s*sha256\s+arm:\s*"([^"]*)",\s*\n\s*intel:\s*"([^"]*)"`)
	singleRe  = regexp.MustCompile(`(?m)^\s*sha256\s+"([^"]*)"`)

	// 字符串优先级（越低越旧）
	versionOrder = map[string]int{"preview": 0, "alpha": 1, "beta": 2, "rc": 3, "": 4}
)

type (
	jsonObject = map[string]any

	version struct {
		v                      string
		appleName, appleSha256 string
		intelName, intelSha256 string
	}
	Row struct {
		RB           string
		APP          string
		AppleSilicon string
		Intel        string
	}
)

func ReadLines(path string) ([]string, error) {
	file, err := os.Open(path)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var lines []string
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		lines = append(lines, scanner.Text())
	}
	return lines, scanner.Err()
}

// main scripts目录外执行
func main() {
	cur, _ := os.Getwd()
	if strings.Contains(cur, "scripts") {
		cur = filepath.Join(cur, "..")
		os.Chdir(cur)
	}
	cur, _ = filepath.Abs(cur)
	lines, _ := ReadLines(filepath.Join(cur, "README.md"))
	from, to := -1, -1
	for i, line := range lines {
		if line == "Actions自动更新:" {
			from = i + 1
			continue
		}
		if from > 0 {
			nline := strings.TrimSpace(line)
			if nline == "" || nline[0] != '|' {
				break
			}
			to = i
		}
	}
	rows := parseMarkdownTable(lines[from : to+1])
	for _, row := range rows {
		aaa(filepath.Join(cur, row.RB), row)
		fmt.Println(strings.Repeat("-", 80))
	}
}

func aaa(rbPath string, row Row) {
	lines, _ := ReadLines(rbPath)
	curVersion := ""
	for _, line := range lines {
		if strings.Contains(line, "version ") {
			matches := versionRe.FindStringSubmatch(line)
			if len(matches) >= 2 {
				curVersion = matches[1]
			}
		}
	}
	if curVersion == "" {
		return
	}
	_url := fmt.Sprintf("https://api.github.com/repos/%s/releases/latest", row.APP)
	resp, err := http.Get(_url)
	if err != nil {
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)
	var latest jsonObject
	json.Unmarshal(body, &latest)
	tagName := ""
	if _, ok := latest["tag_name"]; ok {
		tagName = strings.TrimPrefix(latest["tag_name"].(string), "v")
	}
	fmt.Println(row.APP, "当前版本: "+curVersion, "最新版本: "+tagName)
	if !compareVersion(curVersion, tagName) {
		return
	}

	v := version{
		v:         tagName,
		appleName: strings.ReplaceAll(row.AppleSilicon, "${VERSION}", tagName),
		intelName: strings.ReplaceAll(row.Intel, "${VERSION}", tagName),
	}
	for _, asset := range latest["assets"].([]any) {
		aa := asset.(jsonObject)
		fmt.Println("测试测试:", "label", aa["label"], "name", aa["name"])
		name := ""
		if aa["label"] != nil {
			name = aa["label"].(string)
		}
		if name == "" {
			if aa["name"] != nil {
				name = aa["name"].(string)
			}
		}
		if name == "" {
			continue
		}
		sha256 := strings.TrimPrefix(aa["digest"].(string), "sha256:")
		if sha256 == "" {
			sha256 = ":no_check"
		}
		if name == v.appleName {
			v.appleSha256 = sha256
		}
		if name == v.intelName {
			v.intelSha256 = sha256
		}
	}
	fmt.Println("更新文件信息:", curVersion, "-->", v.v)
	fmt.Println(v.appleName+": "+v.appleSha256, v.intelName+": "+v.intelSha256)
	replaceVersionAndSHA256(rbPath, v)
}

func replaceVersionAndSHA256(rbPath string, v version) error {
	data, err := os.ReadFile(rbPath)
	if err != nil {
		return err
	}
	text := string(data)

	// 1️⃣ version
	text = versionRe.ReplaceAllString(text, fmt.Sprintf(`  version "%s"`, v.v))
	// 2️⃣ arm + intel sha256（✅ 用双引号）
	text = dualRe.ReplaceAllString(text, fmt.Sprintf("  sha256 arm:   \"%s\",\n         intel: \"%s\"", v.appleSha256, v.intelSha256))
	// 3️⃣ 单平台 sha256（兜底）
	text = singleRe.ReplaceAllString(text, fmt.Sprintf("  sha256 \"%s\"", v.appleSha256))

	return os.WriteFile(rbPath, []byte(text), 0644)
}

func parseMarkdownTable(lines []string) (r []Row) {
	for i, line := range lines {
		if i <= 1 || line == "" || strings.Contains(line, ":--") {
			continue
		}

		line = strings.Trim(line, "|")
		parts := strings.Split(line, "|")
		if len(parts) < 4 {
			continue
		}
		row := Row{
			RB:           strings.TrimSpace(parts[0]),
			APP:          strings.TrimSpace(parts[1]),
			AppleSilicon: strings.TrimSpace(parts[2]),
			Intel:        strings.TrimSpace(parts[3]),
		}
		r = append(r, row)
	}

	return r
}

func compareVersion(old, now string) bool {
	oparts, nparts := strings.Split(old, "."), strings.Split(now, ".")
	maxLen := max(len(oparts), len(nparts))
	for i := range maxLen {
		ov, nv := partValue(oparts, i), partValue(nparts, i)
		if ov == nv {
			continue
		}
		return nv > ov
	}
	return false
}
func partValue(parts []string, idx int) int {
	if idx < 0 || idx >= len(parts) {
		return 0
	}
	s := parts[idx]
	if num, err := strconv.Atoi(s); err == nil {
		return num
	}
	if v, ok := versionOrder[strings.ToLower(s)]; ok {
		return v
	}
	return 100 + int(s[0])
}
