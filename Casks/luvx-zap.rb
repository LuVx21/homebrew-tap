cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.26.2"
  sha256 arm:   "4f68539c0bb40b1d878af81ab5a429c54058fa3afdb4786dfeec4c55f7865d4f",
         intel: "37f387e9dec4a45db95271065d544ad9b724f0dbc0a7fb276401ca06a29bf71f"

  url "https://github.com/zerx-lab/zap/releases/download/v#{version}/Zap-#{arch}.dmg"

  name "Zap"
  desc "Warp的开源版本,支持多AI供应商"
  homepage "https://github.com/zerx-lab/zap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Zap.app"

  zap trash: [
    "~/Library/Preferences/dev.zap.Zap.plist",
    "~/Library/Application Support/dev.zap.Zap",
  ]
end