cask "zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.20.preview"
  sha256 arm:   "7a49688d56dbf3dece7b7c99bd8b012db8f424a50ad2df470f24ca9d95b1d88e",
         intel: "3211ae26e5452a8d5f79ca1be59e64151af3abaebf9be1b617ebde31e57d10b7"

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