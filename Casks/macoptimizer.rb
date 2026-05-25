cask "macoptimizer" do
  arch arm: "AppleSilicon", intel: "Intel"
  version "4.0.7"
  sha256 arm:   "fa2e1265513d8f073bdaedd3a1966113510991c9c443e7d730751f6de5707783",
         intel: "9a6910cbebedc3a84ef8f031823dc3710698578b757a100d313d762d29e1e116"

  url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/MacOptimizer-v#{version}-#{arch}.dmg"
  name "Mac优化大师"
  desc "System cleaner and optimizer for macOS"
  homepage "https://github.com/ddlmanus/MacOptimizer"

  app "Mac优化大师.app", target: "Mac优化大师.app"

  zap trash: [
    "~/Library/Application Support/com.ddlmanus.macoptimizer",
    "~/Library/Caches/com.ddlmanus.macoptimizer",
    "~/Library/Preferences/com.ddlmanus.macoptimizer.plist",
    "~/Library/Saved Application State/com.ddlmanus.macoptimizer.savedState",
  ]
end