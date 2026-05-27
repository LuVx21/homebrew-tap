cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.26.2"
  sha256 arm:   "",
         intel: ""

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