#!/bin/bash

## Installing zsh using a script from ohmyzsh
install_zsh()
{
    sudo apt-get install zsh -y
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_zsh