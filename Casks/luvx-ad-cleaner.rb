cask "luvx-ad-cleaner" do
  arch arm: "arm64", intel: "intel"
  version "0.4.4"
  sha256 arm:   "b55b3544a84f0c541dba056692a4e14aeaa5b8998e5a02d267b948c8220d53fe",
         intel: "051759f36caf61ce45f372a208877a2a15cafd3d472c99edfabd6bb9bc1ae569"

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
