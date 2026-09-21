cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.13.0"
  sha256 arm:   "2504af90ac1470e31df39155296ac281a7723011a6e78a580e951aaaadc43539",
         intel: "54a1e351d46fd846448031eac6ad0b8b56a19e98186514868eeb9e63383d62cf"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
