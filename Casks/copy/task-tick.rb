cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.25.4"
  sha256 arm:   "8c6fa6912bb925b2acdc900b88c536196be0749b4d90438bd7b27353a2e32d29",
         intel: "58ddd10b1f9a4b212109ad9f5c2e21fac489b3a753decc90d102afa7cd832dc7"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
