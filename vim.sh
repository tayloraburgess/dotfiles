#!/bin/bash

#
# Vim Setup
#

# Set DIR variable to this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create link to filetype plugin directory
ln -s "${DIR}/after" ~/.vim/after

# Create link to Vim theme
mkdir ~/.vim/colors
ln -s "${DIR}/monokai.vim" ~/.vim/colors/monokai.vim

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins via Vim Plug

vim +PlugInstall +qall

# Compile YouCompleteMe

~/.vim/plugged/YouCompleteMe/install.py --clang-completer --tern-completer
