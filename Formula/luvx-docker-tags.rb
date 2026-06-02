class LuvxDockerTags < Formula
  url "https://github.com/LuVx21/coding-go.git",
      revision: "2d7b9a81f3994e06b02fa80f5709d6dbf5d86dc9"
  version "0.0.1"

  desc "golang 实现的查询镜像的tag"
  homepage "https://github.com/LuVx21/coding-go"

  # unless which("go")
  #   depends_on "go" => :build
  # end

  def install
    ENV["GO111MODULE"] = "on"
    ENV["GOPROXY"] = "https://goproxy.cn,direct" if OS.mac?
    cd "cmd" do
      system "/opt/go/bin/go", "mod", "tidy"
      system "/opt/go/bin/go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "-o", bin/"docker-tags", "./docker"
    end
  end
end