cask "luvx-clash-verge" do
  arch arm: "aarch64", intel: "x64"
  version "2.5.10"
  sha256 arm:   "40d4a7da4543d75f573a5cfcc31543b0b4bf7e02caa122a9ca50654859585839",
         intel: "b1d6938680f3e411b5961e56591faaa92c95e9676f54ebfdfa98b7eab374023e"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge"
  desc "Modern GUI proxy client based on Tauri"
  homepage "https://github.com/clash-verge-rev/clash-verge-rev"

  depends_on :macos

  app "Clash Verge.app"
end
