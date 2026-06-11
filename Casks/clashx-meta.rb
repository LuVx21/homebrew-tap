cask "clashx-meta" do
  version "1.4.38"
  sha256 "2639f0770c8adccfe2aac723d218e33b0a87f9950e1cb03432708d3e00d3e0d3"

  url "https://github.com/MetaCubeX/ClashX.Meta/releases/download/v#{version}/ClashX.Meta.zip",
    verified: "github.com/MetaCubeX/ClashX.Meta/"
  name "ClashX Meta"
  desc "Rule based proxy based on Clash"
  homepage "https://github.com/MetaCubeX/ClashX.Meta"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClashX Meta.app"

  zap trash: [
    "~/Library/Preferences/com.metacubex.ClashX.meta.plist",
    "~/Library/Cookies/com.metacubex.ClashX.meta.binarycookies",
  ]
end