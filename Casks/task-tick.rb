cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.23.3"
  sha256 arm:   "fe6622f592fc82c0411e529f44dd2fc862fafb352684f850d780b9d22bf6a4a7",
         intel: "d1348cbcec59fb1febc6de748618f8f17f2a7f5064c49dff61affc5f4e01e277"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
