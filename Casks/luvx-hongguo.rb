cask "luvx-hongguo" do
  version "1.2.28"
  sha256 arm:   "bba46bcab427a5a1ae1135dc8993dde69a11416094f45b7039ef7da10b62b8b7",
         intel: "bba46bcab427a5a1ae1135dc8993dde69a11416094f45b7039ef7da10b62b8b7"

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
