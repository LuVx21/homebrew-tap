cask "luvx_zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.22.preview"
  sha256 arm:   "49f0a1cf53005a89d8e442569f08ce9558cb777c9c46986e74806d50823b80b0",
         intel: "343a5dfdf455c4c3bba8a2ea1c80e7823920f0fce2a7f0911c44151707ea8186"

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