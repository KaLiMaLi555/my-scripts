#!bin/bash

## Updating system
update_sys()
{
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

## Installing vscode from deb
## Edit the link for lastest installtion
## Current installation March 2020 (version 1.44)
install_vscode()
{
    wget https://az764295.vo.msecnd.net/stable/ff915844119ce9485abfe8aa9076ec76b5300ddd/code_1.44.2-1587059832_amd64.deb
    sudo apt-get install ./code*.deb
    rm code*.deb
}

install_vscode
