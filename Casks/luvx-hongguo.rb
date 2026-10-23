cask "luvx-hongguo" do
  arch arm: "AppleSilicon", intel: "Intel"
  version "1.2.11"
  sha256 arm:   "",
         intel: ""

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  app "红果短剧.app", target: "红果短剧.app"

  zap trash: [
  ]
end