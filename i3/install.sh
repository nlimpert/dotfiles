#!/bin/bash

echo "installing i3 files"

# check dependencies
#TODO fix deps
[[ ! $(which rofi) ]] && echo -e "  \033[1mwarning:\033[0m i3 needs rofi but is not installed"

ln -sf ${DOTFILES}/i3 ${HOME}/.config/
