cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.03.1"
  sha256 arm:   "4b73569b21c542b869743f47d640d909363093c8c3c10a0b66dc7bd391d92acd",
         intel: "b34c2a6becff66445267c050aa25d480e1c64e8eb77b3eb2f988d328e3287379"

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