cask "luvx-clash-party" do
  arch arm: "arm64", intel: "x64"
  version "2.0.5"
  sha256 arm:   "3c2c595d7ac7c3df295da6c32ab6b970d31d2aa9c746b489daabc2851114d080",
         intel: "c12c59b82191a151df9e16248c2d3033a3c54b188da96b4aa1ba24c16008f2ca"

  url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-macos-#{version}-#{arch}.pkg"
  name "Clash Party"
  desc "Mihomo (Clash Meta) GUI client with TUN and Sub-Store support"
  homepage "https://github.com/mihomo-party-org/clash-party"

  depends_on :macos

  pkg "clash-party-macos-#{version}-#{arch}.pkg"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: [
    "/tmp/mihomo-party-helper.sock",
    "/tmp/mihomo-party.sock",
    "~/Library/Application Support/mihomo-party",
    "~/Library/Caches/mihomo-party",
    "~/Library/Preferences/party.plist",
    "~/Library/Saved Application State/party.savedState",
  ]
end
