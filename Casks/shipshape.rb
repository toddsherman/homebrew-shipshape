cask "shipshape" do
  version "0.3.35"
  sha256 "2514ba27462123b2bc28f6c16b915bdde7e73b9c35fa00570657a3e9e9294a20"

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
