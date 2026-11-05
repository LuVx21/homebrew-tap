cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.3.2"
  sha256 arm:   "d6b5218a787cbb05848692aeee17c800934aa7abfa1ccba4bf2e04eb454d9e54",
         intel: "5dc4fac93510a7db593d8bcb269e61c14b47d0f2550dac4ce314eb5fc5fd1198"

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
