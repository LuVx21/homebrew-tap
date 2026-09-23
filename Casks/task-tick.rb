cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.24.1"
  sha256 arm:   "e70f860057c136e555326ab5c21eb3e64db44bb9efa22bd70cd12918c004d7b3",
         intel: "c029dd5bca0a4cd13149787892cd1439c83616452056eee8babbeb6d9a93a991"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
