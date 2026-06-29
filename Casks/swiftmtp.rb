cask "swiftmtp" do
  version "1.2.3"
  sha256 "6648e6de1625149e23077c1c9943687b6f3d27df3a7524405bd1c84c3b5eebd7"

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