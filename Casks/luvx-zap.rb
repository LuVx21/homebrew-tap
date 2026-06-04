cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.04.1"
  sha256 arm:   "1cb82fbefed08ce852c0e426605019f509679fa520ec16910faa6b6000a80a9b",
         intel: "5ce54c0ba95150e31e581226a87c0b8b56bdb20690f07a13d1fa1a00982da82d"

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