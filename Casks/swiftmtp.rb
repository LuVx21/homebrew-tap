cask "swiftmtp" do
  version "1.2.4"
  sha256 "fa3a8297317d6175093385fe027f9aa77005fa8f6f0e6e96dc84031fdedf638c"

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