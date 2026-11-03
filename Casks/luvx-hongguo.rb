cask "luvx-hongguo" do
  version "1.2.20"
  sha256 arm:   "eaa2180981007f2a41a84632b26b198312964cc4680414dc38026c9b59b2237d",
         intel: "eaa2180981007f2a41a84632b26b198312964cc4680414dc38026c9b59b2237d"

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
