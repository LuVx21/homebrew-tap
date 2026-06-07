cask "swiftmtp" do
  version "1.2.2"
  sha256 "8611cd65e2b8dc71cd6511966c6a07668ef5dbec7df61171b08ee85710203ca0"

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