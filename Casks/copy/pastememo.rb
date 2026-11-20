cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.18.2"
  sha256 arm:   "d41a16fa17dcb3c4c54de6564ce34cc8e7bce89cb2163ee379b8c95bf66fb2f3",
         intel: "9ad0f4d65a1057540f597046b5fabf37c6d347a0af2c09726ad161efaf9b81b4"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
