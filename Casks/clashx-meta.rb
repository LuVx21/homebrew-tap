cask "clashx-meta" do
  version "1.4.37"
  sha256 "db14affb2d972f6bfa95d626f65a62dde032b39b5d6bc34c55ac8d31087cba2b"

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