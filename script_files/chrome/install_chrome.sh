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
    sudo touch /etc/apt/sources.list.d/google-chrome.list
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
    wget https://dl.google.com/linux/linux_signing_key.pub
    sudo apt-key add linux_signing_key.pub
    sudo apt-get update
    sudo apt-get install google-chrome-stable -y
}

install_chrome