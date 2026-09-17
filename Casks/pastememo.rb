cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.11.0"
  sha256 arm:   "7ff9ff93b6f87c1b824d93bc1161c1e334876baed4f34dd97de2750f6e769f22",
         intel: "71f6f59800a8d060012e0568ffacd804e0be3f7c5dad084733c54dfe6498391b"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
