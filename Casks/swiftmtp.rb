cask "swiftmtp" do
  version "1.2.0"
  sha256 "16118f706ed7f222dce0da5c3adba26fd196bc9e9f6b25e14a339f34bf1795a7",

  url "https://github.com/Neighbor-Z/SwiftMTP/releases/download/v1.2/SwiftMTP-#{version}.dmg"

  name "SwiftMTP"
  desc "Android File Transfer tool for macOS with AI supercharged"
  homepage "https://github.com/Neighbor-Z/SwiftMTP"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "SwiftMTP.app"

  zap trash: [
  ]
end