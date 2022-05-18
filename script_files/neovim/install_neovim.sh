#!/bin/sh

sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
make CMAKE_BUILD_TYPE=Release
sudo make install
