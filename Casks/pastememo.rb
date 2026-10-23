cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.0"
  sha256 arm:   "e12a32bc756e8962edfe1f19b3c896fddda1aa7a103c53e860feab0227fb678b",
         intel: "ba303d902f9adb8fa16fd1e82daede5dabae210bc2bcb3b9dce579f1d9bcc98d"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
