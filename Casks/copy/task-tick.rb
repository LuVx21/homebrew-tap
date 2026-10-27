cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.25.1"
  sha256 arm:   "49d76a8f8256df6bf1e74707f565b79b6b82898306e5ffcff23766d2d8708602",
         intel: "2557d3cddb38c0d7d4bdc500319df4332bb0f5c9916e17499e2cf05ffe482849"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
