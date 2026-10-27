cask "luvx-rayburst" do
  arch arm: "aarch64", intel: "x64"
  version "4.1.1"
  sha256 arm:   "715ed7f6eaf5a79e06d554f365a313b4843f90493f09b157091a15d665253b24",
         intel: "edd26d4a9b834d161531151b7a44f3d81da4209f3059194d43f18ea8c8d4af91"

  url "https://github.com/AnInsomniacy/rayburst/releases/download/v#{version}/Rayburst_#{version}_#{arch}.dmg"
  name "Rayburst"
  desc "Redefining the open-source download manager. Motrix Next"
  homepage "https://github.com/AnInsomniacy/rayburst"

  app "Rayburst.app"

  zap trash: [
  ]
end