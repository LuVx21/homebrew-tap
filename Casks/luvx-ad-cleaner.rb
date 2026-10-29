cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.2.7"
  sha256 arm:   "d795d58522ed1f31dc34bd1842ac5993b7fac1ca1ffcdfb05deb8ee4cfec8de7",
         intel: "49517c64a168f21736d3a085a2897963b16909b77f85d30f62522db43e4e5f9b"

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