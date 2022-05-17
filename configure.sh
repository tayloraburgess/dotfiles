#!/bin/bash

# set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# create links to dotfiles
ln -s "${DIR}/.bash_profile" ~/.bash_profile
ln -s "${DIR}/.bashrc" ~/.bashrc
ln -s "${DIR}/.gitconfig" ~/.gitconfig
ln -s "${DIR}/.gitignore_global" ~/.gitignore_global

# vim
mkdir ~/.vim
mkdir ~/.vim/swap

# defaults
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# set bash as the default shell
chsh -s /bin/bash
