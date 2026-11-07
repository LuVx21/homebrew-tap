cask "task-tick" do
  arch arm: "arm64", intel: "x86_64"

  version "1.25.2"
  sha256 arm:   "ce34fe546b3e52d52506129f825261e8711bbd32301fa99b7cf42936f87be845",
         intel: "2d2190869fc6f4f23c15667366a9d75b1c60d6cf687a0b678a97dd8c9878cd76"

  url "https://github.com/lifedever/TaskTick/releases/download/v#{version}/TaskTick-#{version}-#{arch}.dmg"
  name "TaskTick"
  desc "Native macOS scheduled task manager with menu bar support"
  homepage "https://github.com/lifedever/TaskTick"

  app "TaskTick.app"
  binary "#{appdir}/TaskTick.app/Contents/cli/tasktick"
end
