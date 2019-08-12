#!/bin/bash

#
# Vim Setup
#

mkdir ~/.vim

# Set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create swapfile directory
mkdir ~/.vim/swap

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins via Vim Plug

vim +PlugInstall +qall
