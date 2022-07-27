#!/bin/sh

sudo apt install cmake -y
sudo apt install pkg-config -y
sudo apt install libtool libtool-bin -y
sudo apt install gettext -y
sudo apt install unzip -y
sudo apt install git -y
sudo apt install python3-pynvim -y
sudo apt install lua5.1 -y

git clone https://github.com/neovim/neovim.git
git checkout release-0.6
make CMAKE_BUILD_TYPE=Release
sudo make install

git clone https://github.com/KaLiMaLi555/nvim.git
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
