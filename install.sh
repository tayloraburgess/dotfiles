#!/bin/bash

# Set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew packages
brew install bash-completion
brew install git
brew install vim
brew install the_silver_searcher
brew install pyenv
brew install pyenv-virtualenv

brew cask install alfred
brew cask install iterm2
brew cask install google-chrome
brew cask install firefox
brew cask install spotify
brew cask install google-backup-and-sync
brew cask install homebrew/cask-drivers/focusrite-control
brew cask install signal
brew cask install homebrew/cask-drivers/logitech-options

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Defaults
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 12
defaults write com.apple.Dock autohide-delay -float 5.0

# Create links to dotfiles
ln -s "${DIR}/.bash_profile" ~/.bash_profile
ln -s "${DIR}/.bashrc" ~/.bashrc
ln -s "${DIR}/.vimrc" ~/.vimrc
ln -s "${DIR}/.gitconfig" ~/.gitconfig
ln -s "${DIR}/.gitignore_global" ~/.gitignore_global
