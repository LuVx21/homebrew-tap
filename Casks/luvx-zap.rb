cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.07.01.1"
  sha256 arm:   "573fa367f53fee8d158f3bcd88976837c23a040746fa71d312a58686f353189d",
         intel: "ca4375566d95dc41be6674445c45c18d2b08307e42c8eeb9be80d07e33f55451"

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