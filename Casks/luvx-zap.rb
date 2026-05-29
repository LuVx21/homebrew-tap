cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.29.1"
  sha256 arm:   "04d69aa6adec1d706ea3edb29acff0d2a41dd95a875ed334389703fff9af0df8",
         intel: "ce20fa88f2f446cae887a098261be156c0ec3a6928f4eb1961e4b5655fc8311e"

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