# memory.md — matchavez/homebrew-tellyhoova

Self-context for Claude. README.md now exists (added 2026-07-11) — standard Homebrew tap, one file: `Casks/tellyhoova.rb`. Last refreshed: 2026-07-11.

## What this repo is
Homebrew tap serving `brew tap matchavez/tellyhoova && brew install --cask tellyhoova`.

## What it does
Cask formula pins version + sha256, downloads the `.dmg` from **matchavez/tellyhoova**'s GitHub Release, requires macOS ≥ Sequoia. Has a `postflight` block that auto-strips the quarantine xattr (`xattr -dr com.apple.quarantine`) since Tellyhoova is unsigned — this was added specifically so users don't hit the Gatekeeper "damaged" dialog (see tellyhoova's own README/memory for that history). `zap`s app-support + prefs plist on uninstall.

## Maintenance
This tap has been bumped every time Tellyhoova ships (currently at 1.0.3, tracking 6 commits total: 1.0.0 → Gatekeeper caveat → 1.0.1 → auto-quarantine-strip → 1.0.2 → 1.0.3). Bump `version`+`sha256` here whenever a new Tellyhoova release ships — this repo tends to need updating more often than homebrew-dumptruck since Tellyhoova is the more actively maintained app.

## Related repos
- **matchavez/tellyhoova** — the app itself.

## Sync note
Keep this file (and a README.md, if one gets added) in sync with any change. If they drift, flag it to Mat and get approval before publishing the sync rather than doing it silently.
