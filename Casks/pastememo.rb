cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.11.1"
  sha256 arm:   "49ed8ff3d49a22d5ff775bb1893e30a4d8d8d944bc4d05f584c59ea5e2902315",
         intel: "0124d7de6a72fb29c7531650fbe75ad27b555a773104e4aac0370915e936ed0d"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
