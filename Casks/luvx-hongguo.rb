cask "luvx-hongguo" do
  version "1.2.18"
  sha256 arm:   "f8f6248faab6654edcbab81286b1e821bf8a88560db65beb3bc4e784fdda453c",
         intel: "f8f6248faab6654edcbab81286b1e821bf8a88560db65beb3bc4e784fdda453c"

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  app "红果短剧.app", target: "红果短剧.app"

  zap trash: [
    "~/Library/Application Support/hgplayer",
    "~/Library/Caches/com.wails.hgplayer",
    "~/Library/Preferences/com.wails.hgplayer.plist",
    "~/Library/WebKit/com.wails.hgplayer",
  ]
end