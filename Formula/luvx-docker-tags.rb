class LuvxDockerTags < Formula
  url "https://github.com/LuVx21/coding-go.git",
      revision: "9a7bbc82950284d4f697ed095d36ced55c48d97e"
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