cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.13.1"
  sha256 arm:   "b9892d5186fccfa9028b05618603590e1be18f9a272d8d2634c354f2b5d0181d",
         intel: "f0f47f0fe9f5f3e47dfc07cb5e03b3ad09744185ae8014fdfbbcaed6c7e64fae"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
