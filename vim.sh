#!/bin/bash

mkdir ~/.vim

# create swapfile directory
mkdir ~/.vim/swap

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim plugins via vim-plug

vim +PlugInstall +qall
