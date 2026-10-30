cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.2.9"
  sha256 arm:   "425e06cde8cb80eb85f23d46833522a41f7eb673625cb3843032eea4514246ab",
         intel: "717c2f20706a5d14a77fed63d9f15fc568f8653b0d23a66b9db7a10d5cd33f61"

  url "https://github.com/rddmwmddr/android-ad-cleaner/releases/download/v#{version}/AndroidAdCleaner-#{version}-mac-#{arch}.dmg"
  name "ad-cleaner"
  desc "关掉国产安卓手机系统里的广告、热搜、资讯推荐和营销推送。不 root，可还原，支持 AI 智能体一键执行。"
  homepage "https://github.com/rddmwmddr/android-ad-cleaner"

  app "安卓去广告.app"

  zap trash: [
    "~/Library/Caches/com.rddmwmddr.androidadcleaner",
    "~/Library/WebKit/com.rddmwmddr.androidadcleaner",
    '~/Library/Application Support/AndroidAdCleaner'
  ]
end