cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.4.3"
  sha256 arm:   "b7d2ca303027f3116c91ccb87b13dbe0674ec9860c82e24b696bf7ce253e4a04",
         intel: "2f5fcb3f39da10c5579362d892bae2cf31be12bf3f2c12c7a19de0e8d020acd0"

  url "https://github.com/rddmwmddr/android-ad-cleaner/releases/download/v#{version}/AndroidAdCleaner-#{version}-mac-#{arch}.dmg"
  name "ad-cleaner"
  desc "关掉国产安卓手机系统里的广告、热搜、资讯推荐和营销推送。不 root，可还原，支持 AI 智能体一键执行。"
  homepage "https://github.com/rddmwmddr/android-ad-cleaner"

  depends_on :macos

  app "安卓去广告.app"

  zap trash: [
    "~/Library/Application Support/AndroidAdCleaner",
    "~/Library/Caches/com.rddmwmddr.androidadcleaner",
    "~/Library/WebKit/com.rddmwmddr.androidadcleaner",
  ]
end
