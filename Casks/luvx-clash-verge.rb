cask "luvx-clash-verge" do
  arch arm: "aarch64", intel: "x64"
  version "2.5.8"
  sha256 arm:   "1f7c3a73970f103fc3cb9944744772fa1540160f05911e033ffc57f7c9f860ec",
         intel: "8cdf7a01a1c548a081339aff21b2599d60f67730d05485e90831f4bbdbf3b093"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge"
  desc "A modern GUI client based on Tauri, designed to run in Windows, macOS and Linux for tailored proxy experience"
  homepage "https://github.com/clash-verge-rev/clash-verge-rev"

  app "Clash Verge.app"

  zap trash: [
  ]
end