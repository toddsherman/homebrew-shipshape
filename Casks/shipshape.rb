cask "shipshape" do
  version "0.3.34"
  sha256 "78fee5ac6a3446fab5784a92c2625a2b7ee18b3ab939a681130e2f5e989aafb4"

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
