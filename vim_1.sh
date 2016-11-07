#!/bin/bash

#
# Vim Setup 1
#

# Create link to Vim theme
ln -s "${DIR}/monokai.vim" ~/.vim/colors/monokai.vim

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# In Vim, run :PlugInstall, and then run vim_2.sh
