cask "macoptimizer" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "4.0.6"
  sha256 arm:   "e915ef32f8f87114038c8ea6757906fd80ed3afc338fd5dacab97f45c53f6eb8",
         intel: "fd153c4e20021118704be38a4109940ad8c49b72d8a436d99adfb662fc6bb991"

  url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/MacOptimizer-v#{version}-#{arch}.dmg"
  name "MacOptimizer"
  desc "System cleaner and optimizer for macOS"
  homepage "https://github.com/ddlmanus/MacOptimizer"

  app "Mac优化大师.app", target: "MacOptimizer.app"

  zap trash: [
    "~/Library/Application Support/com.ddlmanus.macoptimizer",
    "~/Library/Caches/com.ddlmanus.macoptimizer",
    "~/Library/Preferences/com.ddlmanus.macoptimizer.plist",
    "~/Library/Saved Application State/com.ddlmanus.macoptimizer.savedState",
  ]
end