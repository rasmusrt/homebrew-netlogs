cask "netlogs" do
  version "0.1.0"
  sha256 "524c73ec7bc6e9f757270e08fe15c765750c54ce6e7562a9981b46cf20a94a3c"

  url "https://github.com/rasmusrt/netlogs/releases/download/v#{version}/Netlogs-#{version}.zip"
  name "Netlogs"
  desc "Router and internet latency monitor with throughput tests"
  homepage "https://github.com/rasmusrt/netlogs"

  # Netlogs is ad-hoc signed, not notarized — notarization needs the paid Apple
  # Developer Program, and the App Store is ruled out anyway because the App
  # Sandbox blocks ICMP. Install with --no-quarantine, or take the one-time
  # trip through System Settings > Privacy & Security > Open Anyway.
  #
  # A cask cannot waive quarantine on the user's behalf; that is deliberate on
  # Homebrew's part, so the flag has to come from whoever installs.
  depends_on macos: :sequoia

  app "Netlogs.app"

  zap trash: [
    "~/Library/Application Support/Netlogs",
    "~/Library/Preferences/app.netlogs.Netlogs.plist",
    "~/Library/Saved Application State/app.netlogs.Netlogs.savedState",
  ]
end
