#!/bin/sh

DOTFILES=".bashrc .gitconfig .gvimrc .vim .vimrc .zsh .zshrc"

cd

for I in $DOTFILES
do
  if [ -e "$I" ]; then
    echo "\n => $I already exists, let's save it"
    mv $I $I.bak
  fi
  ln -s dotfiles/$I .
done
