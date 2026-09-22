cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.24.0"
  sha256 arm:   "97091c057cf92e9d0f4eae58ab7173a63262a657030fbcc7fcb4f5d92d4ff54d",
         intel: "d3d612eb5a256b5c0aac65bcccc8d2dd6fcdeba7628c5cf20d057914d4796cc9"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
