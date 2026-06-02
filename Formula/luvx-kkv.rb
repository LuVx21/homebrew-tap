class LuvxKkv < Formula
  url "https://github.com/LuVx21/shell.git",
      revision: "512a9bd9875c05e2ec69a01716d470a34c8d889e"
  version "0.0.1"

  desc "shell 实现的简易本地kv存储"
  homepage "https://github.com/LuVx21/shell"

  def install
    bin.install "bin/source/script/kv.sh" => "kkv"
  end
end