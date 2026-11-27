cask "luvx-mdm" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.2"
  sha256 arm:   "0217160ba08f56c5dad07642508828f259fcc283ed0b930514af712cf01aeea6",
         intel: "1c4bbdf1450a841299db658d74dcb4db9912deaafd119f26557f0b4ba4951f8a"

  url "https://github.com/anefzaoui/misterdownloadmanager/releases/download/v#{version}/MisterDownloadManager-#{version}-macos-#{arch}-experimental.dmg"
  name "MisterDownloadManager"
  desc "一个下载工具,类似IDM"
  homepage "https://github.com/anefzaoui/misterdownloadmanager"

  depends_on :macos

  app "Mister Download Manager.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Mister Download Manager.app"]
  end

  zap trash: [
    "~/Library/Preferences/io.github.anefzaoui.misterdownloadmanager.plist"
  ]
end
