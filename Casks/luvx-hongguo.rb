cask "luvx-hongguo" do
  version "1.2.24"
  sha256 arm:   "d7a65a934fc6fa96532d125f6cb6e24e7d20213c5062dac05ac2ea93ca3e9624",
         intel: "d7a65a934fc6fa96532d125f6cb6e24e7d20213c5062dac05ac2ea93ca3e9624"

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
