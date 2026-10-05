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

Netlogs is signed with a Developer ID and notarized by Apple, so it opens like
any other downloaded app. Prefer to build it yourself?
[Build it from source](https://github.com/rasmusrt/netlogs#build-from-source).

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
