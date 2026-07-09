cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.07.09.1"
  sha256 arm:   "885281050b501478dd96a2e501f11283ab06a59bb8a9c469cfd32b7fb30eef39",
         intel: "60d3ad10c1918453f533c107c915d21f0ad04dafffca219b3c2a8c04fa57b252"

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