#!/bin/bash

# set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# set bash as the default shell
chsh -s /bin/bash

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
brew install qmk/qmk/qmk

brew install --cask alfred
brew install --cask iterm2
brew install --cask firefox
brew install --cask spotify
brew install --cask signal
brew install --cask arq
brew install --cask authy
brew install --cask rectangle
brew install --cask rekordbox
brew install --cask discord
brew install --cask ilok-license-manager
brew install --cask calibre
brew install --cask loopback
brew install --cask elektron-overbridge
brew install --cask elektron-transfer
brew install --cask nordvpn
brew install --cask izotope-product-portal
brew install --cask little-snitch
brew install --cask micro-snitch
brew install --cask zsa-wally
brew install --cask bitwig-studio

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# defaults
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 12
defaults write com.apple.Dock autohide-delay -float 5.0

# create links to dotfiles
ln -s "${DIR}/.bash_profile" ~/.bash_profile
ln -s "${DIR}/.bashrc" ~/.bashrc
ln -s "${DIR}/.vimrc" ~/.vimrc
ln -s "${DIR}/.gitconfig" ~/.gitconfig
ln -s "${DIR}/.gitignore_global" ~/.gitignore_global
