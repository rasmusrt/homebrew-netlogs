# homebrew-netlogs

A [Homebrew](https://brew.sh) tap for [Netlogs](https://github.com/rasmusrt/netlogs)
— a macOS app that watches your router and the internet at once, so "the
internet is slow" becomes a question with an answer.

## Install

```bash
brew install --cask --no-quarantine rasmusrt/netlogs/netlogs
```

The `--no-quarantine` is not optional decoration. Netlogs is ad-hoc signed
rather than notarized: notarization requires the paid Apple Developer Program,
and the Mac App Store is not an alternative because the App Sandbox blocks the
ICMP sockets the app is built around. Without the flag, macOS quarantines the
download and refuses the first launch until you visit **System Settings →
Privacy & Security → Open Anyway**.

If you would rather not bypass Gatekeeper for a binary you did not build,
don't: [build it from source](https://github.com/rasmusrt/netlogs#build-from-source)
instead. It is one command, and a locally built app is never quarantined.

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
