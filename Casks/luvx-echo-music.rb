cask "luvx-echo-music" do
  arch arm: "arm64", intel: "x64"
  version "2.3.2"
  sha256 arm:   "db9c329e8d2fb14dade226fe44d34cb91c4ff6fcb5563ac6259a458f6b27172a",
         intel: "ed0d0c45690366c0427154fe04624f7400aa2973fd9ac55db9b10495cfb901fb"

  url "https://github.com/hoowhoami/EchoMusic/releases/download/v#{version}/EchoMusic-#{version}-mac-#{arch}.zip"
  name "EchoMusic"
  desc "一个简约的第三方酷狗概念版音乐播放器"
  homepage "https://github.com/hoowhoami/EchoMusic"

  app "EchoMusic.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/EchoMusic.app"]
  end

  zap trash: [
    "~/Library/Logs/EchoMusic",
    "~/Library/Preferences/com.hoowhoami.echomusic.plist",
  ]
end