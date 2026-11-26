cask "luvx-hongguo" do
  version "1.2.33"
  sha256 arm:   "d78e0950904e24a0c5f34c734c8ae73b0d3f84e3e005c0be288e2bdf89e1669b",
         intel: "d78e0950904e24a0c5f34c734c8ae73b0d3f84e3e005c0be288e2bdf89e1669b"

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
