#!bin/bash

## Updating system
update_sys()
{
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

## Installing chrome
install_chrome()
{
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt-get install ./google-chrome*
    sudo rm linux_signing_key.pub
}

install_chrome
update_sys