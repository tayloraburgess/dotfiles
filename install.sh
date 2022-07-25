#!/bin/bash

# rosetta
sudo softwareupdate --install-rosetta

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install homebrew packages
brew install bash-completion
brew install git
brew install vim
brew install the_silver_searcher
brew install pyenv
brew install pyenv-virtualenv
brew install sox

brew install --cask iterm2
brew install --cask firefox
brew install --cask signal
brew install --cask arq
brew install --cask rectangle
brew install --cask rekordbox
brew install --cask discord
brew install --cask ilok-license-manager
brew install --cask calibre
brew install --cask nordvpn
brew install --cask izotope-product-portal
brew install --cask little-snitch
brew install --cask micro-snitch
brew install --cask logitech-options
brew install --cask 1password
brew install --cask loopback
brew install --cask obsidian
brew install --cask transmission
brew install --cask zoom
brew install --cask karabiner-elements

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
