#!/bin/bash

# Set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set bash as the default shell
chsh -s /bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew packages
brew install bash-completion
brew install git
brew install vim
brew install the_silver_searcher
brew install pyenv
brew install pyenv-virtualenv
brew install sox

brew install --cask alfred
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask spotify
brew install --cask google-backup-and-sync
brew install --cask homebrew/cask-drivers/focusrite-control
brew install --cask signal
brew install --cask homebrew/cask-drivers/logitech-options
brew install --cask elektron-transfer
brew install --cask arq
brew install --cask zoomus
brew install --cask authy
brew install --cask sysex-librarian
brew install --cask ableton-live-suite
brew install --cask docker
brew install --cask rectangle
brew install --cask rekordbox

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
