cask "pastememo" do
  arch arm: "arm64", intel: "x86_64"

  version "1.19.0"
  sha256 arm:   "59b306f0d77c834fefea0af1c5473e3a844b43c63aff3bcabe496234fcf0c10d",
         intel: "d843f9daef3bcf31bd05eb2da5b3b5c785ecf8e11fb11e41f009d5045b8a8661"

  url "https://github.com/lifedever/PasteMemo-app/releases/download/v#{version}/PasteMemo-#{version}-#{arch}.dmg"
  name "PasteMemo"
  desc "Smart clipboard manager for macOS"
  homepage "https://www.lifedever.com/PasteMemo/"

  app "PasteMemo.app"
end
