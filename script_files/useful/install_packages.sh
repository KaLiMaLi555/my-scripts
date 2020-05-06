#!bin/bash

## Updating system
update_sys()
{
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

## Script for setting proxy
## Installing proxymaster
install_proxy()
{
    cd $HOME
    wget https://github.com/thealphadollar/set_proxy/archive/master.zip
    unzip master.zip
    rm master.zip
    cd -
}

## Some useful packages
install_useful()
{
    update_sys
    sudo apt-get install git -y
    sudo apt-get install vim -y
    update_sys
    sudo apt-get install p7zip-full -y
    sudo apt-get install snapd
    sudo snap install discord --classic
    wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
    sudo apt-get install ./slack-desktop-*.deb
    rm slack-desktop-*.deb
}

install_useful
install_proxy