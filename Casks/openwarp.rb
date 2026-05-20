cask "openwarp" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.19.preview"
  sha256 arm:   "d4abd9d57056c3b90e0044e366ecfb403fbcf7cee45702821983394e8475fbab",
         intel: "64eb6053b8f11e5dadadc658d0dcee467c581eacc76621156c7867cd986ee6c0"

  url "https://github.com/zerx-lab/warp/releases/download/v#{version}/OpenWarp-#{arch}.dmg"

  name "OpenWarp"
  desc "Warp的开源版本,支持多AI供应商"
  homepage "https://github.com/zerx-lab/warp"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OpenWarp.app"

  zap trash: [
    "~/Library/Preferences/dev.openwarp.OpenWarp.plist",
    "~/Library/Application Support/dev.openwarp.OpenWarp",
  ]
end