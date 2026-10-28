cask "luvx-open-note" do
  version "1.2.0"
  sha256 "9d6efd98a395bf0178e68d9fb10926554a2284a1604b26f57105a785908d7b35"

  url "https://github.com/The-Flash-7/open-note/releases/download/v#{version}/OpenNote-v#{version}-mac_arm64.dmg"
  name "Open Note"
  desc "Open Note"
  homepage "https://github.com/The-Flash-7/open-note"

  app "OpenNote.app"

  zap trash: [
  ]
end