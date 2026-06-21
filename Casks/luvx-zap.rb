cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.06.21.1"
  sha256 arm:   "e8a41865a217288107f38ba70da9b0d83a8841f755dfa93e95fb6e87ddc3d261",
         intel: "7f72d09d93ffa4c4585717225951ef14ac12d65dcd0aa2b141227b55b57665a5"

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