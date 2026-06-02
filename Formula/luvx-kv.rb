class LuvxKv < Formula
  url "https://github.com/LuVx21/coding-go.git",
      revision: "2d7b9a81f3994e06b02fa80f5709d6dbf5d86dc9"
  version "0.0.1"

  desc "golang 实现的简易本地kv存储"
  homepage "https://github.com/LuVx21/coding-go"

  def install
    ENV["GO111MODULE"] = "on"
    ENV["GOPROXY"] = "https://goproxy.cn,direct" if OS.mac?
    cd "cmd" do
      system "/opt/go/bin/go", "mod", "tidy"
      system "/opt/go/bin/go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "-o", bin/"kv", "./kv"
    end
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kv --help")
  end
end