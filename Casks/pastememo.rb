cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.12.0"
  sha256 arm:   "75da5d07addfa7e241d85c4641f99e7a327750cccec2482dec706ed836c09168",
         intel: "19c29ffce330fd52f670c73fbb65fdfea6249553de8c0540d9fc956b43d17c1c"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
