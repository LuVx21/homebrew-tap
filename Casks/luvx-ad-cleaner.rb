cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.4.1"
  sha256 arm:   "c7104749e9e04601bb5d659f493f62e2e8536d4503cbd81de70ab83d71258e4c",
         intel: "94acf988f597f1e72b1e18064ac58c25bc79d994ef06662e653841badd5c6534"

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
