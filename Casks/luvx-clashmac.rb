cask "luvx-clashmac" do
  version "27.1.8"
  sha256 arm:   "d48a0bcac1fe97e2cb06bf99541fba71e0f6e0060d954fbee8898ad268c508f9",
         intel: "d48a0bcac1fe97e2cb06bf99541fba71e0f6e0060d954fbee8898ad268c508f9"

  url "https://github.com/666OS/ClashMac/releases/download/#{version}/ClashMac-#{version}.dmg"
  name "ClashMac"
  desc "原生 ClashMac"
  homepage "https://github.com/666OS/ClashMac"

  app "ClashMac.app"

  zap trash: [
  ]
end