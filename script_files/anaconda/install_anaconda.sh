#!/bin/bash

## Updating system
update_sys()
{
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

install_anaconda()
{
    sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
    wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
    bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh
}

install_anaconda
