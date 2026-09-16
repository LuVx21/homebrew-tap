cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.23.1"
  sha256 arm:   "0666ddf6266542bd7163a7886d85f30bdc1d12d28edfce07f9664ee2ba387b19",
         intel: "96f4be4b665104b83e53ca8f38474ffa1996e10fbb96265d08fcabafdd82a8f2"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
