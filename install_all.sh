#!/bin/bash

export DOTFILES=~/dev/dotfiles

if [[ $# -eq 0 ]] # install all files
then
  INSTALLFILES=( $(find ${DOTFILES}/ -name install.sh) )
  for i in ${INSTALLFILES[@]}
  do
    eval ${i}
  done
else              # install only given files
  while [ ${1} ]
  do
    if [ -f ${DOTFILES}/${1}/install.sh ]
    then
      eval ${DOTFILES}/${1}/install.sh
    else
      echo -e "  \033[1merror\033[0m: no installfile for ${DOTFILES}/${1} found."
    fi
    shift
 done
fi

