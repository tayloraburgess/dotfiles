#!/bin/bash

#
# Dotfiles Install Script
#

# Set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create links to dotfiles
ln -s "${DIR}/.bash_profile" ~/.bash_profile
ln -s "${DIR}/.bashrc" ~/.bashrc
ln -s "${DIR}/.vimrc" ~/.vimrc
ln -s "${DIR}/.tern-config" ~/.tern-config
mkdir ~/.hammerspoon
ln -s "${DIR}/init.lua" ~/.hammerspoon/init.lua

if [ "$(uname)" == "Darwin" ]; then
    defaults write -g KeyRepeat -float 1.1
fi
