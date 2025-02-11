#!/bin/bash

dockutil --remove all
dockutil --add /Applications/Arc.app
dockutil --add /Applications/Spotify.app
dockutil --add /Applications/Ghostty.app
dockutil --add /Applications/Slack.app
dockutil --add $HOME/Applications/PhpStorm.app
killall Dock

