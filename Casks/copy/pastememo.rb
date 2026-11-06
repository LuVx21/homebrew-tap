cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.17.0"
  sha256 arm:   "4637322ed0dcc01262703ce3242d9a39312b27ff39bd2a60d959436468330eaf",
         intel: "b4b21105d8995698ebd7cf330d119fc1c94349d90bdfc171bb8c3f5e7f600b5b"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
