cask "netlogs" do
  version "0.2.0"
  sha256 "a834d3ad4fe12a33bf1246223f4349d994864f6b9329ed5362866a3319c583a4"

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
