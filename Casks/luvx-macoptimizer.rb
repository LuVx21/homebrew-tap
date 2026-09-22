cask "luvx-macoptimizer" do
  arch arm: "AppleSilicon", intel: "Intel"
  version "5.0"
  sha256 arm:   "68ae036bef1418c37ef0522c7cdc7f1d37978c1f7f9487306c4bddeda4122403",
         intel: "4f84d5b51bcffb6bdd9bb62cbe915f9f141b88aa4785cef0f3e4aa7f659e1321"

  url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/MacOptimizer-v#{version}-#{arch}.dmg"
  name "MacOptimizer"
  desc "System cleaner and optimizer for macOS"
  homepage "https://github.com/ddlmanus/MacOptimizer"

  # app "MacOptimizer-v#{version}-#{arch}.app", target: "MacOptimizer.app"
  app "Mac优化大师.app", target: "MacOptimizer.app"

  zap trash: [
    "~/Library/Application Support/com.ddlmanus.macoptimizer",
    "~/Library/Caches/com.ddlmanus.macoptimizer",
    "~/Library/Preferences/com.ddlmanus.macoptimizer.plist",
    "~/Library/Saved Application State/com.ddlmanus.macoptimizer.savedState",
  ]
end