cask "luvx-clash-verge" do
  arch arm: "aarch64", intel: "x64"
  version "2.5.9"
  sha256 arm:   "",
         intel: ""

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge"
  desc "Modern GUI proxy client based on Tauri"
  homepage "https://github.com/clash-verge-rev/clash-verge-rev"

  depends_on :macos

  app "Clash Verge.app"
end
