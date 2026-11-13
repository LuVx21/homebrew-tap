cask "luvx-clashx-meta" do
  version "1.4.48"
  sha256 "53b8384423507aa305d9411dc2643c0e5ef02da442ff97d307602341301eca12"

  url "https://github.com/MetaCubeX/ClashX.Meta/releases/download/v#{version}/ClashX.Meta.zip"
  name "ClashX Meta"
  desc "Rule based proxy based on Clash"
  homepage "https://github.com/MetaCubeX/ClashX.Meta"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "ClashX Meta.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/ClashX Meta.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.metacubex.ClashX.meta",
    "~/Library/Caches/com.MetaCubeX.ClashX.meta",
    "~/Library/Cookies/com.metacubex.ClashX.meta.binarycookies",
    "~/Library/HTTPStorages/com.metacubex.ClashX.meta*",
    "~/Library/Logs/ClashX Meta",
    "~/Library/Preferences/com.metacubex.ClashX.meta.plist",
  ]
end
