## Initial setup
```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh + plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone this repo
git clone https://github.com/JanisVepris/dot-files.git

# Clone submodules
git submodule update --init --recursive

# Install gum
brew install gum
brew install fzf
brew install dockutil
```

## Install apps and packages
```bash
./setup
```

## Apply configs
```bash
./config
```

## Aerospace

Just start the Aerospace app and give it the required permissions.

