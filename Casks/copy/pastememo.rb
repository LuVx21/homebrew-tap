cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.17.1"
  sha256 arm:   "999fc6f68895783f1dde3574317dbd8b42de65900d4602530345dc327b3de508",
         intel: "2aab40eb3b34bec9b578ebe193f8698e541db6d648df251d7d7ea9bff8582ef6"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
