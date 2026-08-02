cask "macoptimizer" do
  arch arm: "AppleSilicon", intel: "Intel"
  version "5.0"
  sha256 arm:   "",
         intel: ""

  url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/MacOptimizer-v#{version}-#{arch}.dmg"
  name "MacOptimizer"
  desc "System cleaner and optimizer for macOS"
  homepage "https://github.com/ddlmanus/MacOptimizer"

  app "MacOptimizer-v#{version}-#{arch}.app", target: "MacOptimizer.app"

  zap trash: [
    "~/Library/Application Support/com.ddlmanus.macoptimizer",
    "~/Library/Caches/com.ddlmanus.macoptimizer",
    "~/Library/Preferences/com.ddlmanus.macoptimizer.plist",
    "~/Library/Saved Application State/com.ddlmanus.macoptimizer.savedState",
  ]
end