cask "clashx-meta" do
  version "1.4.43"
  sha256 "ad1d387aff03c4c0da6e32c1629271d51fd2f7ff26b0455b47a422a87bdfa3c8"

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