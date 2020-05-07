#!/bin/bash
cwd=$(pwd)

greet()
{
    printf "************************************************************\n\n"
    echo "Hi" $USER
    printf "You are running Installation Scripts by KaLiMaLi555"
    printf "\n\n************************************************************\n\n"
}

get_permission()
{
    ## Reading for mode of installation
    read -p "Do you want to install $1 [Y/n]: " default
    if [[ "$default" == "" ]]
        then
            default="Y"
    fi
    if [[ "$default" =~ [Y|y] ]]
    then
        return 1
    else
        return 0
    fi
}

## Updating system
update_sys()
{
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

greet
## Starting script for Installation
get_permission "Default"

if [[ "$?" =~ [1] ]]
then
    echo "Proceeding with default settings ..."
    update_sys

    # Installing sublime and sublime merge
    echo "\n\nInstalling Sublime Test & Sublime Merge\n\n"
    cd sublime
    bash install_sublime.sh
    cd $cwd

    # Installing Apt-fast wrapper
    echo "\n\nInstalling apt-fast wrapper\n\n"
    cd apt_fast
    bash install_aptfast.sh
    cd $cwd

    # Installing vscode
    echo "\n\nInstalling Visual Studio Code\n\n"
    cd vscode
    bash install_vscode.sh
    cd $cwd

    # Installing some useful packages
    echo "\n\nInstalling git, vim, 7z and proxy-master\n\n"
    cd useful
    bash install_packages,sh
    cd $cwd

    # Installing chrome
    echo "\n\nInstalling Google-Chrome\n\n"
    cd chrome
    bash install_chrome.sh
    cd $cwd

    # Installing Opencv
    echo "\n\nInstalling Opencv\n\n"
    cd opencv
    bash install_opencv.sh
    cd $cwd

    # Installing Ros
    echo "\n\nInstalling Ros\n\n"
    cd ros
    bash install_ros.sh
    cd $cwd

    # Installing zsh
    # Comment if not required
    echo "\n\nInstalling and setting up zsh\n\n"
    cd zsh
    bash install_zsh.sh
    cd $cwd
else
    echo "Proceeding with custom settings ..."
    update_sys

    # Permission for sublime installation
    get_permission "Sublime Text & Sublime Merge"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling Sublime Test & Sublime Merge\n\n"
            cd sublime
            bash install_sublime.sh
            cd $cwd
    fi

    # Permission for apt-fast installation
    get_permission "apt-fast wrapper"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling apt-fast wrapper\n\n"
            cd apt_fast
            bash install_aptfast.sh
            cd $cwd
    fi

    # Permission for vscode installation
    get_permission "Visual Studio Code"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling Visual Studio Code\n\n"
            cd vscode
            bash install_vscode.sh
            cd $cwd
    fi

    # Installing some useful packages
    echo "\n\nInstalling git, vim, 7z and proxy-master\n\n"
    cd useful
    bash install_packages.sh
    cd $cwd

    # Permission for installing chrome
    get_permission "Google-Chrome"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling Google-Chrome\n\n"
            cd chrome
            bash install_chrome.sh
            cd $cwd
    fi

    # Permission for installing opencv
    get_permission "OpenCV"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling Opencv\n\n"
            cd opencv
            bash install_opencv.sh
            cd $cwd
    fi

    # Permission for installing ros
    get_permission "Ros"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling Ros\n\n"
            cd ros
            bash install_ros.sh
            cd $cwd
    fi

    # Permission for installing zsh
    get_permission "ZSH"
    if [[ "$?" =~ [1] ]]
        then
            echo "\n\nInstalling and setting up zsh\n\n"
            cd zsh
            bash install_zsh.sh
            cd $cwd
    fi
fi

