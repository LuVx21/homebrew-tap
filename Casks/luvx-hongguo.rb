cask "luvx-hongguo" do
  version "1.2.25"
  sha256 arm:   "8324a203d2389c747d08467f4fd4520e15c0419c51e655aa06b39cfeabc1d274",
         intel: "8324a203d2389c747d08467f4fd4520e15c0419c51e655aa06b39cfeabc1d274"

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  depends_on :macos

  app "红果短剧.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/红果短剧.app"]
  end

  zap trash: [
    "~/Library/Application Support/hgplayer",
    "~/Library/Caches/com.wails.hgplayer",
    "~/Library/Preferences/com.wails.hgplayer.plist",
    "~/Library/WebKit/com.wails.hgplayer",
  ]
end
