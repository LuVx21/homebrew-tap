cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.3.0"
  sha256 arm:   "4d51843df3d312241ad5bf37b7f582b64f5307abbfb6ab84733240728f01b9f5",
         intel: "7ca8b63009252c82553b43b818ba869858f4d4e417997d592c0f894e59f79d7c"

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