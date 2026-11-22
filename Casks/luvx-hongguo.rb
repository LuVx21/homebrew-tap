cask "luvx-hongguo" do
  version "1.2.31"
  sha256 arm:   "d033cfe9230659d0852868b1af4cb4b022f46451b1d1995c53c63e63ff4e1fd6",
         intel: "d033cfe9230659d0852868b1af4cb4b022f46451b1d1995c53c63e63ff4e1fd6"

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  depends_on :macos

  app "短剧播放器.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/短剧播放器.app"]
  end

  zap trash: [
    "~/Library/Application Support/hgplayer",
    "~/Library/Caches/com.wails.hgplayer",
    "~/Library/Preferences/com.wails.hgplayer.plist",
    "~/Library/WebKit/com.wails.hgplayer",
  ]
end
