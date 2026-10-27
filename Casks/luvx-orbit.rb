cask "luvx-orbit" do
  version "1.7.0"
  sha256 arm:   "2f324b531e46a02bdffa380beb66beca44aab68a39dedb523d3fbf3ae903dafe",
         intel: "2f324b531e46a02bdffa380beb66beca44aab68a39dedb523d3fbf3ae903dafe"

  url "https://github.com/ycl-2004/Orbit/releases/download/v#{version}/Orbit-macOS-v#{version}.zip"
  name "orbit"
  desc "macOS app switcher"
  homepage "https://github.com/ycl-2004/Orbit"

  app "Orbit.app"

  zap trash: [
  ]
end