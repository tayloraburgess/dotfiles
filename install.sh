#!/bin/bash

# rosetta
sudo softwareupdate --install-rosetta

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# install homebrew packages
brew install bash-completion
brew install git
brew install vim
brew install the_silver_searcher
brew install pyenv
brew install pyenv-virtualenv
brew install sox
brew install rectangle
brew install orion

brew install --cask iterm2
brew install --cask signal
brew install --cask arq
brew install --cask discord
brew install --cask calibre
brew install --cask nordvpn
brew install --cask 1password
brew install --cask obsidian
brew install --cask transmission
brew install --cask google-chrome

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
