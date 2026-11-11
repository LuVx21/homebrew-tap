cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.4.2"
  sha256 arm:   "e9fb5ec6305b37ee513ef2c7a0a5f2f32ba660fde995a2857049732da19bc4dc",
         intel: "669815cb6a77aa374d7f2066e643f046c05906cca77e58c342569c6cd6b7dbf8"

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
