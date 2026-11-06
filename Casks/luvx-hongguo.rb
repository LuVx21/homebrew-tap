cask "luvx-hongguo" do
  version "1.2.23"
  sha256 arm:   "8be0498b75fe02647bdb35f97f8fac9e85323ebfd01540c2da7702599c9f630e",
         intel: "8be0498b75fe02647bdb35f97f8fac9e85323ebfd01540c2da7702599c9f630e"

  url "https://github.com/yangbin1322/hongguo-player/releases/download/v#{version}/hongguo-v#{version}-macos-universal.zip"
  name "hongguo"
  desc "红果免费短剧-yangbin1322"
  homepage "https://github.com/yangbin1322/hongguo-player"

  depends_on :macos

  app "红果短剧.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/红果短剧.app"]
  end

  zap trash: [
    "~/Library/Application Support/hgplayer",
    "~/Library/Caches/com.wails.hgplayer",
    "~/Library/Preferences/com.wails.hgplayer.plist",
    "~/Library/WebKit/com.wails.hgplayer",
  ]
end
