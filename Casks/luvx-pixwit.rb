cask "luvx-pixwit" do
  version "1.19.1"
  sha256 "d9f8c78ce0e12644d1c6f5c8a122b199421a95164060e9e31443f9066988da49"

  url "https://github.com/yun-cun-li/PixWit/releases/download/v#{version}/PixWit-#{version}-macOS-arm64.dmg"
  name "PixWit"
  desc "截图工具,带OCR,贴图,录屏"
  homepage "https://github.com/yun-cun-li/PixWit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PixWit.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/PixWit.app"]
  end

  zap trash: [
    "~/Library/Application Support/PixWit Team",
    "~/Library/Caches/PixWit Team",
    "~/Library/Preferences/com.pixwit.app.plist",
  ]
end
