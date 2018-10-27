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
    bash-completion \
    cmake \
    docker \
    elm \
    git \
    node \
    postgresql \
    python3 \
    vim
brew cask install \
    alfred \
    spectacle \
    iterm2 \
    google-chrome \
    spotify \
    google-backup-and-sync \
    lastpass

# Install npm packages
npm install -g n, prettier
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
