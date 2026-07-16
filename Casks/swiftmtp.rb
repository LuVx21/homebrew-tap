cask "swiftmtp" do
  version "1.2.3"
  sha256 "8cbc281907fc04ab9f6593d545025be50bb354a4ce3c24188adbf4d20c4fc680"

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
  binary "#{appdir}/SwiftMTP.app/Contents/MacOS/SwiftMTP", target: "SwiftMTP"

  zap trash: [
  ]
end