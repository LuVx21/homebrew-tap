cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.41"
  sha256 arm:   "97a6045f9fe68fee6a9b7ad46173bd2a31e24e4efe722160243ed16493a92e40",
         intel: "fc40e8cb2cad666e35025e14f228584da138f7c64c1e7df0f2755bd918e0bf6a"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
