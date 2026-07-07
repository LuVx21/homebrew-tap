cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.07.07.1"
  sha256 arm:   "30ded3668f37e192da5c42406f88093bf22cceaf24e378315e07637fa1855304",
         intel: "1e4586dc70d218f7cf084ea33bf4c2457cd238a4dbb329d5643a5cb94253b760"

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