cask "swiftmtp" do
  version "1.2.1"
  sha256 "33a217c1ac06255523331df574bf887c55fe81d7dd497a652cea2851c20816fa"

  url "https://github.com/Neighbor-Z/SwiftMTP/releases/download/v#{version}/SwiftMTP-#{version}.dmg"

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