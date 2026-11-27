cask "luvx-rayburst" do
  arch arm: "aarch64", intel: "x64"
  version "4.1.3"
  sha256 arm:   "4f82b8479475d955db0a1f145d6194e801f3edf8d45afb3a68f49fc4c09f8c1b",
         intel: "6bb9870545bd692643ab83f9b8a97d454181711664aa9fd058fbb44d40067855"

  url "https://github.com/AnInsomniacy/rayburst/releases/download/v#{version}/Rayburst_#{version}_#{arch}.dmg"
  name "Rayburst"
  desc "Redefining the open-source download manager. Motrix Next"
  homepage "https://github.com/AnInsomniacy/rayburst"

  depends_on :macos

  app "Rayburst.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Rayburst.app"]
  end

  zap trash: [
    "~/Library/Application Support/dev.aninsomniacy.rayburst",
    "~/Library/Caches/dev.aninsomniacy.rayburst",
    "~/Library/Logs/dev.aninsomniacy.rayburst",
    "~/Library/WebKit/dev.aninsomniacy.rayburst",
  ]
end
