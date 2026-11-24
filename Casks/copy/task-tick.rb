cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.25.3"
  sha256 arm:   "ba68ec0728e98ed668d306658e59317296bcb0eb6c902a2f528fa175662c6671",
         intel: "441358f49ab325b0e32a04e0de65f9c8cd0042e7176574b37c43e730b2a8e4e7"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
