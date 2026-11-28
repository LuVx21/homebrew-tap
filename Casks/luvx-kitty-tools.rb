cask "luvx-kitty-tools" do
  arch arm: "arm64", intel: "x86_64"
  version "macos-v0.10.4"
  sha256 arm:   "",
         intel: ""

  url "https://github.com/YyAdnBug/kitty-tools/releases/download/macos-v#{version}/Kitty.Tools_#{version}_#{arch}.dmg"
  name "kitty-tools"
  desc "原生跨平台桌面效率工具：剪贴板历史、应用启动器、翻译、截图、录屏和录音，九样工具都住在菜单栏里，用快捷键随叫随到"
  homepage "https://github.com/YyAdnBug/kitty-tools"

  depends_on :macos

  app "Kitty Tools.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Kitty Tools.app"]
  end

  zap trash: [
  ]
end
