cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.25.0"
  sha256 arm:   "b9ffc3e14e9a8f16a36d21b2cf8e6811eded91f43c328830ded50f10d0b0052b",
         intel: "8e2e8494d06633f3e17089bc4e17beedc6f253c6859cba1280e7673ccb03a8ff"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
