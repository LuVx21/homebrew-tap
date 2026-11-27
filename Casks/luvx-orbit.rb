cask "luvx-orbit" do
  version "1.8.0"
  sha256 arm:   "b12b15c1d1c70a2b454080906097968b8133554e51d58064a0f53ca624e29ffd",
         intel: "b12b15c1d1c70a2b454080906097968b8133554e51d58064a0f53ca624e29ffd"

  url "https://github.com/ycl-2004/Orbit/releases/download/v#{version}/Orbit-macOS-v#{version}.zip"
  name "orbit"
  desc "App switcher"
  homepage "https://github.com/ycl-2004/Orbit"

  depends_on :macos

  app "Orbit.app"
end
