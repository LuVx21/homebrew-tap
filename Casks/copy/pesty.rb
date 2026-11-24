cask "pesty" do
  version "1.4.0"
  sha256 "9e0a0b960c61dd985baf8b2104253f149cfe5bf884e484193fc332efffa675bf"

  url "https://github.com/momenbasel/pesty/releases/download/v#{version}/Pesty-#{version}.dmg"
  name "Pesty"
  desc "Free, open-source clipboard manager inspired by Paste"
  homepage "https://github.com/momenbasel/pesty"

  depends_on macos: :sonoma

  app "Pesty.app"

  zap trash: [
    "~/Library/Application Support/Pesty",
    "~/Library/Preferences/com.greycorelabs.pesty.plist",
  ]
end
