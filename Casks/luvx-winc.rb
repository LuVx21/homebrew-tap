cask "luvx-winc" do
  arch arm: "arm64", intel: "x64"

  version "0.1.970"
  sha256 arm:   "ac64a138fdc4103b80908c26b74cc0be71dfdccec587d39e74feaa2f2e21fe42",
         intel: "3e1048380c527b4bcad22d9060e27293d43d3f96673b8cbdd4718529fb8ef25c"

  url "https://github.com/DEEIX-AI/Winc/releases/download/v#{version}/Winc-#{version}-macos-#{arch}.dmg"
  name "Winc"
  desc "一个轻量的类VSCode编辑器, 没有lsp"
  homepage "https://github.com/DEEIX-AI/Winc"

  depends_on :macos

  app "Winc.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Winc.app"]
  end

  zap trash: [
    "~/Library/Application Support/winc",
    "~/Library/Caches/com.deeix.winc",
    "~/Library/HTTPStorages/com.deeix.winc",
    "~/Library/Preferences/com.deeix.winc.plist",
  ]
end
