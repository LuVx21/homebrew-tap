cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.29.1"
  sha256 arm:   "ae5ced1a94e962944eb95a05f241afd11097733d02938f0cdc0ccf207573b784",
         intel: "080a69310ffc299428bed530dfefe381f439d629129a7bca2e8c7a26cd1ac8e5"

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