cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.16.0"
  sha256 arm:   "bb09d2b92f44e5f551ddc5ccfdc5dea436dbdb859e2aca8a6517759020412b1d",
         intel: "2df0c42c42191e770d4eafeb1d82f8b97a3d49749776cd4589f2317378f3ed36"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
