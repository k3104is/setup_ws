#!/bin/bash


# sudo apt update
# sudo apt install -y \
#   neovim
mkdir build
pushd ./build
wget https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-arm64.tar.gz
tar xvf nvim-linux-arm64.tar.gz
sudo rm -rf /opt/nvim
sudo mv nvim-linux-arm64 /opt/nvim
sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim


wget https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-arm64.appimage

wget https://github.com/jesseduffield/lazygit/releases/download/v0.52.0/lazygit_0.52.0_Linux_arm64.tar.gz
tar xvf lazygit_0.52.0_Linux_arm64.tar.gz
sudo install lazygit /usr/local/bin

popd
rm -rf ./build
