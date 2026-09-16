cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.23.2"
  sha256 arm:   "013ee45348dc060cc6e20ec370c4a17f80a58ad97f38753843d5e8f2f9d3eb69",
         intel: "124b5b3be0f4b6013635e1f1ba6a3ac28b92714feeb745845cf6f21e98a94b6a"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
