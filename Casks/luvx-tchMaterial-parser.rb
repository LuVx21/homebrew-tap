cask "luvx-tchMaterial-parser" do
  arch arm: "arm64", intel: "x64"
  version "4.4"
  sha256 arm:   "e9e3cb4128eb6ca1800df7050fd4643d7f5a240c12b9632d8b9d8786b8fd8c6c",
         intel: "49261fac3c15ec059fedccfb09b53d21845831cf39c5d0e2d7417c9e1afe37f6"

  url "https://github.com/happycola233/tchMaterial-parser/releases/download/v#{version}/tchMaterial-parser-mac-${arch}.zip"
  name "tchMaterial-parser"
  desc "国家中小学智慧教育平台 电子课本下载工具，帮助您从智慧教育平台中获取电子课本的 PDF 文件网址并进行下载，让您更方便地获取课本内容。"
  homepage "https://github.com/happycola233/tchMaterial-parser"

  app "tchMaterial-parser.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/tchMaterial-parser.app"]
  end

  zap trash: [
  ]
end