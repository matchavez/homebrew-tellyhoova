# homebrew-tellyhoova

Homebrew tap for [Tellyhoova](https://github.com/matchavez/tellyhoova), a native macOS yt-dlp frontend for downloading videos and audio.

## Install

```bash
brew tap matchavez/tellyhoova
brew install --cask tellyhoova
```

Tellyhoova is unsigned, so macOS Gatekeeper would normally flag it on first launch. This cask strips the quarantine attribute automatically on install (`postflight` block), so in most cases you can just open the app after installing — no right-click-Open workaround needed.

## What's here

- `Casks/tellyhoova.rb` — the cask formula. Pulls the `.dmg` from Tellyhoova's [GitHub Releases](https://github.com/matchavez/tellyhoova/releases), requires macOS Sequoia or later.

## Updating the cask

When a new Tellyhoova version ships, bump `version` and `sha256` in `Casks/tellyhoova.rb` to match the new release's `.dmg`:

```bash
shasum -a 256 Tellyhoova-<version>.dmg
```

## Uninstall

```bash
brew uninstall --cask --zap tellyhoova
```

`--zap` also removes saved preferences and app-support files.
