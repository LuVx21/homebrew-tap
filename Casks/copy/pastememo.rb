cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.18.1"
  sha256 arm:   "4825deb750c3cb53e8e9e941cc2c2aaeac341a928f51810a5f06ac3a6fefbf87",
         intel: "2532d83948fe6c29fa20bc96cc213025b626dc61d55eb83775d2d69f4ea21527"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
