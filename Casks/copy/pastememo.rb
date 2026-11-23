cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.18.3"
  sha256 arm:   "e5ab07c317b5573b08083e996081e247c2b95c110ec9bb18e3662ada35741b4f",
         intel: "c59244a14b71c207c6f3b4a9b1e053b69bfce08bf03fb167edc9966a176dbb61"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
