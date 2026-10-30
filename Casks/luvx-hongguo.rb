cask "luvx-hongguo" do
  version "1.2.17"
  sha256 arm:   "f7527a2765d6e650ad7b1e5393fdc00a45bb930e12247a08ba9d8ecc6c3a7e2b",
         intel: "f7527a2765d6e650ad7b1e5393fdc00a45bb930e12247a08ba9d8ecc6c3a7e2b"

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