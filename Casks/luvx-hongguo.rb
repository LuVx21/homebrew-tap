cask "luvx-hongguo" do
  arch arm: "AppleSilicon", intel: "Intel"
  version "1.2.16"
  sha256 arm:   "f5f567df0a9b28bf999cec04ce28207fba2059a10d1f8a243f0bbdb9c8ec45f7",
         intel: "f5f567df0a9b28bf999cec04ce28207fba2059a10d1f8a243f0bbdb9c8ec45f7"

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