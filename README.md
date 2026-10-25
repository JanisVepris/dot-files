## New Mac setup

Run this one command:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JanisVepris/dot-files/master/bootstrap)"
```

It installs Homebrew, clones this repo to `~/dot-files`, installs the `Brewfile`, Oh My Zsh and plugins, links all configs, and applies the macOS settings. At the end it prints the steps you must do by hand.

It is safe to run again. If a step fails, fix it and run `~/dot-files/bootstrap`.

## Apps and packages

All brew packages and apps are in `Brewfile`. After you install something new, update it:
```bash
brew bundle dump --force
```

## Configs

To link all configs again:
```bash
./config
```
