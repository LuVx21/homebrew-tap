cask "luvx-hongguo" do
  version "1.2.32"
  sha256 arm:   "c6929cc1b5d663bd106796fe79951795197571628848e78c20eb9ca1376f4c92",
         intel: "c6929cc1b5d663bd106796fe79951795197571628848e78c20eb9ca1376f4c92"

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  depends_on :macos

  app "短剧播放器.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/短剧播放器.app"]
  end

  zap trash: [
    "~/Library/Application Support/hgplayer",
    "~/Library/Caches/com.wails.hgplayer",
    "~/Library/Preferences/com.wails.hgplayer.plist",
    "~/Library/WebKit/com.wails.hgplayer",
  ]
end
