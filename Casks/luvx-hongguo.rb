cask "luvx-hongguo" do
  arch arm: "AppleSilicon", intel: "Intel"
  version "1.2.10"
  sha256 arm:   "2dcd9e5c8c1720469a199902a1b71f94aa25301d546409528419b86f5c938c25",
         intel: "2dcd9e5c8c1720469a199902a1b71f94aa25301d546409528419b86f5c938c25"

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  app "红果短剧.app", target: "红果短剧.app"

  zap trash: [
  ]
end