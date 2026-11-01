class LuvxWebdav < Formula
  url "https://github.com/LuVx21/coding-go.git",
      revision: "d4ce20d0c40b4f67a5eb60fcf9440476e3955bef"
  version "0.0.1"

  desc "golang 实现的类 sftp 的 WebDAV 命令行客户端"
  homepage "https://github.com/LuVx21/coding-go"

  def install
    ENV["GO111MODULE"] = "on"
    ENV["GOPROXY"] = "https://goproxy.cn,direct" if OS.mac?
    cd "cmd" do
      system "/opt/go/bin/go", "mod", "tidy"
      system "/opt/go/bin/go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "-o", bin/"webdav", "./webdav"
    end
  end
end