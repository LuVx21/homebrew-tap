cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.42"
  sha256 arm:   "4f6729c7d79306c5932e053923738e1af9bc4fc5ba37e7ad0f828785953abe2b",
         intel: "b250c7e9652cc5d1e5051147affce9520a6783f81685b0240dee46b9535527bf"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
