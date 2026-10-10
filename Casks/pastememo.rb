cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.13.2"
  sha256 arm:   "ce39e5e917b5c755a9f7f4a047902a44aceaeedd1b69eaeb3ed2c608edac51e5",
         intel: "d64e86908b54a76940ca79eebe3b21be3d36d2a7459d210ada4c350f9e99e9e6"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
