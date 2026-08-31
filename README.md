# homebrew-netlogs

A [Homebrew](https://brew.sh) tap for [Netlogs](https://github.com/rasmusrt/netlogs)
— a macOS app that watches your router and the internet at once, so "the
internet is slow" becomes a question with an answer.

## Install

```bash
brew tap rasmusrt/netlogs
brew trust rasmusrt/netlogs
brew install --cask netlogs
```

Three commands, because Homebrew 6 asks for a tap outside the official ones to
be tapped and trusted explicitly before it will load a cask from it.

**The first launch will be refused**, once. Netlogs is ad-hoc signed rather
than notarized — notarization requires the paid Apple Developer Program, and
the Mac App Store is not an alternative because the App Sandbox blocks the ICMP
sockets the app is built around. So macOS quarantines the download. Open the
app, let it be refused, then go to **System Settings → Privacy & Security →
Open Anyway**. After that it launches normally, until the next version.

Homebrew used to offer `--no-quarantine` for exactly this. Version 6 removed
it, and `HOMEBREW_CASK_OPTS` does not bring it back — measured, not assumed.

**If that sounds like more trouble than it is worth, it is.**
[Build it from source](https://github.com/rasmusrt/netlogs#build-from-source)
instead: one command, no Gatekeeper prompt at all, because an app you compiled
was never downloaded and so was never quarantined.

## Update

```bash
brew update && brew upgrade --cask netlogs
```

## Uninstall

```bash
brew uninstall --cask netlogs          # the app
brew uninstall --zap --cask netlogs    # and the session database
```

`--zap` deletes `~/Library/Application Support/Netlogs`, which is every session
you have ever recorded. Export anything you want to keep first.
