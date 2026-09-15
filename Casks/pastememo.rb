cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.1"
  sha256 arm:   "df3566a5bc5874cdaf4ef01293a817e667275def65466b7ae456b73d78eb490b",
         intel: "78df29e55cea1c7e8261e171fb98d2ba90bac2c75e1b24c2b92317b27c30cc8a"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
