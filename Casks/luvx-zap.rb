cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.18.1"
  sha256 arm:   "637d9898a8ea95e01ca6decf48130775c451c0dd9cd2dc150857a428a2e6087c",
         intel: "bd4d19da4fce00f9c01f7a73802088cecae43538bc6960e120dad8707aa1c348"

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