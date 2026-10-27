cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.15.0"
  sha256 arm:   "6de4893d0d5c44b92baae2cc82e1eb94ab07696d98a94ca9df8b04146d9d75fb",
         intel: "d774283b57b533a86951aa73a4a7d72a17933f316409a655f9812bbb91a2f165"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
