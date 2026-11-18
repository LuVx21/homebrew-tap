cask "luvx-clashmac" do
  version "27.1.9"
  sha256 arm:   "cc91a280cada2dded0045d2aedef86cd21320b462351fa2a06abbe83a822ff14",
         intel: "cc91a280cada2dded0045d2aedef86cd21320b462351fa2a06abbe83a822ff14"

  url "https://github.com/666OS/ClashMac/releases/download/#{version}/ClashMac-#{version}.dmg"
  name "ClashMac"
  desc "原生 ClashMac"
  homepage "https://github.com/666OS/ClashMac"

  depends_on :macos

  app "ClashMac.app"
end
