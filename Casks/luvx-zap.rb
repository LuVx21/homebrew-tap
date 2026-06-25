cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.25.1"
  sha256 arm:   "76958a0fc301878df3c15a8bebf46cb0e7498655af77ef9fb79aad69bfe0ac11",
         intel: "1de55198ba59fff8d0461d87d9944fd78e7eacdd074d76faaef055f6cc2b1bfd"

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