cask "luvx-hongguo" do
  version "1.2.26"
  sha256 arm:   "f7d66ae216f9d487906226fa970d793e1b5cc9e49e608eeb078ae683a344a7f4",
         intel: "f7d66ae216f9d487906226fa970d793e1b5cc9e49e608eeb078ae683a344a7f4"

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
