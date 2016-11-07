#!/bin/bash

#
# Dotfiles Install Script
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s "${DIR}/.bash_profile" ~/.bash_profile
ln -s "${DIR}/.bashrc" ~/.bashrc
ln -s "${DIR}/.vimrc" ~/.vimrc
ln -s "${DIR}/.tern-config" ~/.tern-config

ln -s "${DIR}/monokai.vim" ~/.vim/colors/monokai.vim
