#!/bin/bash

# install script for vim config files

echo "installing vim files"

# check dependencies
#TODO fix deps

ln -sf ${DOTFILES}/vim/vimrc ${HOME}/.vimrc
