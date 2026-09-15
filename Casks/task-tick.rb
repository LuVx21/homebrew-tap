cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0"
  sha256 arm:   "5940b89996e68d9a6081e60378c52d22496cfd14bc426ec1e751f8ae6a4e14cb",
         intel: "cb2e14b9e011821a4b39c449090fe0d3ca58a544e8ba83fc99e8e14229d519b8"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
