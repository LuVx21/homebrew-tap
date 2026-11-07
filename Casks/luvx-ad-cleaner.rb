cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.4.0"
  sha256 arm:   "dfd8120e60e16476e03f0f1fc0268ef6ccd583da80c16a59cd3d4a709246c149",
         intel: "6f797904f80399c4ccaf39a2c608adac893f40afba6f0a5e5627d5373bc79787"

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
