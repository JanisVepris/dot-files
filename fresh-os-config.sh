#!/bin/bash

#check if brew is installed, exit with message if not
if ! command -v brew &> /dev/null
then
    echo "Homebrew is not installed. Please install Homebrew first. https://brew.sh/"
    exit
fi

# MacOS Settings

# enable dock autohide
defaults write com.apple.dock autohide -bool true
# make dock autohide fast
defaults write com.apple.dock autohide-time-modifier -float 0.15
defaults write com.apple.dock autohide-delay -int 0

# minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# dock magnification
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 65
defaults write com.apple.dock mod-count -int 16

# window minimize effect scale
defaults write com.apple.dockmineffect -string scale

# dock icon size
defaults write com.apple.dock tilesize -int 48

# don't show recent applications in dock
defaults write com.apple.dock show-recents -bool false
killall Dock

# MacOS Trackpad config
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultstouchTrackpad FirstClickThreshold -bool true
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -bool true

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap homebrew/cask-fonts
brew install cask

# tooling
brew install font-monaspace
brew install curl
brew install wget
brew install dialog
brew install exiftool
brew install zplug
brew install tree
brew install watch
brew install ripgrep
brew install fzf
brew install htop
brew install bat

# dev
brew install git
brew install php@8.3
brew install composer
brew reinstall icu4c
brew install redis
brew install yarn
brew install mysql
brew install node
brew install sqlite
brew install python
brew install awscli
brew install go

# other
brew install font-hack-nerd-font
brew install 1password-cli
brew install neovim
brew install speedtest-cli
brew install tldr
brew install dockutil

# Install apps
brew install --cask ghostty
brew install --cask arc
brew install --cask google-chrome
# brew install --cask alfred
brew install --cask spotify
brew install --cask elgato-control-center
# brew install --cask rectangle
brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask whatsapp
brew install --cask obsidian
brew install --cask jetbrains-toolbox
brew install --cask slack
brew install --cask google-drive
brew install --cask raycast

brew cleanup

echo "====================="
echo "======= DONE ========"
echo "====================="
echo "Next steps:"
echo ">>> RUN: ./install.sh (install all config files)"
echo ">>> Run: aws configure (configure AWS CLI)"
