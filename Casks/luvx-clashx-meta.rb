cask "luvx-clashx-meta" do
  version "1.4.47"
  sha256 "cc76aa2e561df8e127147324c60a787522001aa0f71ebe9b394ea8e23d809e40"

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
    "~/Library/Application Support/com.metacubex.ClashX.meta",
    "~/Library/Caches/com.MetaCubeX.ClashX.meta",
    "~/Library/Cookies/com.metacubex.ClashX.meta.binarycookies",
    "~/Library/HTTPStorages/com.metacubex.ClashX.meta*",
    "~/Library/Logs/ClashX Meta",
    "~/Library/Preferences/com.metacubex.ClashX.meta.plist",
  ]
end