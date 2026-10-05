cask "netlogs" do
  version "0.1.0"
  sha256 "524c73ec7bc6e9f757270e08fe15c765750c54ce6e7562a9981b46cf20a94a3c"

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
