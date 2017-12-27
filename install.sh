#!/bin/bash

#
# General Install Script
#

# Set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew packages
brew install \
    cmake \
    docker \
    elm \
    node \
    postgresql \
    python3 \
    vim
brew cask install \
    spectacle \
    karabiner-elements \
    hammerspoon \
    iterm2 \
    google-chrome \
    simplenote \
    spotify \
    alfred \
    google-backup-and-sync \
    lastpass

# Install npm packages
npm install -g n
sudo mkdir /usr/local/n
sudo chown -R $(whoami) /usr/local/n

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
ln -s "${DIR}/.tern-config" ~/.tern-config
mkdir ~/.hammerspoon
ln -s "${DIR}/init.lua" ~/.hammerspoon/init.lua
