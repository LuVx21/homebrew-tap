class "luvx-kv" < Formula
  url "https://github.com/LuVx21/coding-go.git",
      revision: "2d7b9a81f3994e06b02fa80f5709d6dbf5d86dc9"
  version "0.0.1"

  desc "golang 实现的简易本地kv存储"
  homepage "https://github.com/LuVx21/coding-go"

  def self.has_go?
    @has_go ||= begin
      if system("command -v go > /dev/null 2>&1")
        version = `go version`.match(/go(\d+\.\d+)/)
        version && Gem::Version.new(version[1]) >= Gem::Version.new("1.26")
      else
        false
      end
    rescue
      false
    end
  end

  depends_on "go" => :build unless has_go?

  def install
    ENV["GO111MODULE"] = "on"
    ENV["GOPROXY"] = "https://goproxy.cn,direct" if OS.mac?
    go = which("go") || Formula["go"].opt_bin/"go"
    system go, "version"
    system go, "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "-o", bin/"kv", "./cmd/kv"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kv --help")
  end
end