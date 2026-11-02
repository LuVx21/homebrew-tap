#!/bin/bash
set -uo pipefail

# 始终以仓库根目录为工作目录，避免被调用位置影响
cd "$(dirname "$0")/.." || exit 1

github="raw.githubusercontent.com"

# 非官方
cask_urls=(
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/pastememo.rb"
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/task-tick.rb"
    "https://${github}/chen08209/homebrew-tap/refs/heads/main/Casks/flclash.rb"
    "https://${github}/Ender-Wang/homebrew-tap/refs/heads/main/Casks/swifka.rb"
)
# 常用
cask_urls+=(
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/d/dropbox.rb"
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/n/neohtop.rb"
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/o/orbit.rb"
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/z/zedis.rb"
)

# 非官方
formula_urls=(
    "https://${github}/omlahore/homebrew-tap/refs/heads/main/Formula/removemacai.rb"
)
# 常用
formula_urls+=(

)

# 先下载到临时文件，成功后再替换，避免下载失败时把原文件清空
fetch() {
    local url="$1" dest="$2" tmp
    tmp="$(mktemp "${dest}.XXXXXX")" || return 1
    if curl -fsSL --retry 3 --connect-timeout 10 "$url" -o "$tmp"; then
        mv "$tmp" "$dest"
    else
        rm -f "$tmp"
        echo "下载失败: $url" >&2
        return 1
    fi
}

failed=0
for url in "${cask_urls[@]}"; do
    fetch "$url" "./Casks/copy/$(basename "$url")" || failed=1
done

for url in "${formula_urls[@]}"; do
    fetch "$url" "./Formula/copy/$(basename "$url")" || failed=1
done

exit "$failed"
