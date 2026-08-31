cask "netlogs" do
  version "0.1.0"
  sha256 "524c73ec7bc6e9f757270e08fe15c765750c54ce6e7562a9981b46cf20a94a3c"

  url "https://github.com/rasmusrt/netlogs/releases/download/v#{version}/Netlogs-#{version}.zip"
  name "Netlogs"
  desc "Router and internet latency monitor with throughput tests"
  homepage "https://github.com/rasmusrt/netlogs"

  # Netlogs is ad-hoc signed, not notarized — notarization needs the paid Apple
  # Developer Program, and the App Store is ruled out anyway because the App
  # Sandbox blocks ICMP. So the first launch needs one trip through System
  # Settings > Privacy & Security > Open Anyway.
  #
  # There is no way around that from here. Homebrew 6 removed --no-quarantine,
  # and HOMEBREW_CASK_OPTS does not bring it back (measured: the staged app
  # still carries com.apple.quarantine). Stripping it from a postflight block
  # would "work" and is deliberately not done — silently disabling a Gatekeeper
  # check on someone else's machine is not a thing a cask should do.
  depends_on macos: :sequoia

  app "Netlogs.app"

  zap trash: [
    "~/Library/Application Support/Netlogs",
    "~/Library/Preferences/app.netlogs.Netlogs.plist",
    "~/Library/Saved Application State/app.netlogs.Netlogs.savedState",
  ]
end
