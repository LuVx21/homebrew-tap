cask "luvx-clash-party" do
  arch arm: "arm64", intel: "x64"

  version "2.0.4"
  sha256 arm:   "174b4b19b02151b2ef84517da0b192e834e43fb4c0ca7fe8700363162cabf7e1",
         intel: "b93a845ecc0eb95da80184e8d3ebb2b94f5d2b9024df7065f9cdf1f23c868432"

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
