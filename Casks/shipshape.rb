cask "shipshape" do
  version "0.3.33"
  sha256 "e3a3a7a6446df352a47f56248b07ee3b65a9ee5f5882942f29882629f4ddbec0"

  url "https://github.com/toddsherman/shipshape/releases/download/v#{version}/Shipshape-#{version}.dmg"
  name "Shipshape"
  desc "Monitor for security fixes in developer tools, apps and project dependencies"
  homepage "https://github.com/toddsherman/shipshape"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Shipshape.app"

  uninstall quit: "sh.todd.security-monitor"

  zap trash: [
    "~/Library/Application Support/Shipshape",
    "~/Library/Caches/sh.todd.security-monitor",
    "~/Library/HTTPStorages/sh.todd.security-monitor",
    "~/Library/HTTPStorages/sh.todd.security-monitor.binarycookies",
    "~/Library/Preferences/sh.todd.security-monitor.plist",
  ]
end
