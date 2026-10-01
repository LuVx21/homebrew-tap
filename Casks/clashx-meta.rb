cask "clashx-meta" do
  version "1.4.46"
  sha256 "b98426e9ab51b7f01afb2f5491571034d17de3aecab36d4e346771ff9d5ce96d"

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