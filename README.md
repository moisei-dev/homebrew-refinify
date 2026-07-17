# homebrew-refinify

Homebrew Cask tap for [Refinify](https://github.com/moisei-dev/refinify), a Hammerspoon-based text-refinement tool for macOS.

## Install

```bash
brew tap moisei-dev/refinify
brew install --cask refinify
```

This downloads the latest Refinify DMG, installs `Refinify.app` into `/Applications`, strips the Gatekeeper quarantine flag (Refinify isn't notarized — this is a personal tap, so we trust our own build), and automatically runs Refinify's first-run setup (installs Hammerspoon if needed, creates the necessary symlinks, seeds `~/.config/refinify/`, and prompts for Accessibility permissions). No need to separately open the app from Finder afterward.

**Note**: setup runs interactively (it shows a few confirmation dialogs, including one to grant Accessibility access) — run `brew install` from Terminal.app in a normal logged-in GUI session, not over SSH/headless.

## Updating

```bash
brew upgrade --cask refinify
```

The cask's `version`/`sha256` are updated automatically by Refinify's release CI on every new release.
