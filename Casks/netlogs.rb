cask "netlogs" do
  version "0.1.1"
  sha256 "cbcb8e34d79b10530e101f101a5ec54ac4413aba9f7ca330c05e6354acda78d0"

  url "https://github.com/rasmusrt/netlogs/releases/download/v#{version}/Netlogs-#{version}.zip"
  name "Netlogs"
  desc "Router and internet latency monitor with throughput tests"
  homepage "https://github.com/rasmusrt/netlogs"

  # Signed with a Developer ID and notarized, so Gatekeeper opens it without a
  # prompt. Not on the Mac App Store: the App Sandbox blocks ICMP.
  depends_on macos: :sequoia

  app "Netlogs.app"

  zap trash: [
    "~/Library/Application Support/Netlogs",
    "~/Library/Preferences/app.netlogs.Netlogs.plist",
    "~/Library/Saved Application State/app.netlogs.Netlogs.savedState",
  ]
end
