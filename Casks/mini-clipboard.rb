cask "mini-clipboard" do
  version "1.0.3"
  sha256 "12ce98b8955bf13d8429e4dc2396f3ace13fcdf0a4c8a2a58dd42022e5034dc2"

  url "https://github.com/PGshen/mini-clipboard/releases/download/v#{version}/Mini-Clipboard.dmg"

  name "Mini Clipboard"
  desc "Mini Clipboard"
  homepage "https://github.com/PGshen/mini-clipboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mini Clipboard.app"

  zap trash: [
  ]
end