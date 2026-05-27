cask "luvx-zap" do
  arch arm: "arm64", intel: "intel"
  version "2026.05.27.2"
  sha256 arm:   "564439624b05845d1f6936a669d660791967a252c9e4a5bdf34ce0bfdd074521",
         intel: "71933e47f594f133fec321b3554ac352236d063da0a719473fd3fe49097d5336"

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