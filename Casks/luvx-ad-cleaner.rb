cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.3.1"
  sha256 arm:   "62b1410431b81965599468d1bd80905863a4c56a45f1fcee07b8bd308c998662",
         intel: "973e9c9f85588448e763567c8e4cb35d157e43e5734ad1525d9218997a42bdf0"

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
