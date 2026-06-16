cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.16.1"
  sha256 arm:   "5406a8c5ec0a0facbd5e66b835d2c724a19c3d8461f08e1578bb84d953f32dfc",
         intel: "29cd8aa0b419ab30836ae31810ed5887ff2169978564df3122f13dd7f44f58d2"

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