#!/bin/bash

# mv ~/.vimrc ~/.vimrc_$(date "+%y%m%d").bak

cp -Rf ./nvim ~/.config/

if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  echo "add packer.nvim"
fi

nvim +PackerSync
