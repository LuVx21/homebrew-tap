cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.4.5"
  sha256 arm:   "9c77b717f2541412c7ab4e1a9aceb7340c8cbbc597ccac5b0b3f7cdf947d87c0",
         intel: "8c4eca9aad35cff3d6f8ffabf93e2ce65d2d7f22998fda3986cecd87ad4f26bf"

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
