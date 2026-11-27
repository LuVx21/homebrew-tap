cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.38"
  sha256 arm:   "0edfda4a65b5964dd7c0c0e2d38df46d29713257ee0bb837bfa10b1054876835",
         intel: "0b9d3a14baa137b2ce8db3c83d37a376a65e6a2a73fe38b0117cb79f19c66d35"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
