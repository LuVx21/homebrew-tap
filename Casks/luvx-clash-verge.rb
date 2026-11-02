cask "luvx-clash-verge" do
  arch arm: "aarch64", intel: "x64"
  version "2.5.9"
  sha256 arm:   "3c487df30546bcbee58363edda2df0c22f9900a7c04807fb8c3945a8d77d1436",
         intel: "2adfe473699068240c9855066b61207c362f5a3a64f91a0b79942664bdbd5ce6"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge"
  desc "Modern GUI proxy client based on Tauri"
  homepage "https://github.com/clash-verge-rev/clash-verge-rev"

  depends_on :macos

  app "Clash Verge.app"
end
