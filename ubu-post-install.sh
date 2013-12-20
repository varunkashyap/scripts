#!/usr/bin/env bash

## update rep sources
##==============================================================================
    apt-get update


## Add software-properties-common and build-essential for use below
##  mainly required for the add-apt-repository and building software from source
##==============================================================================
    apt-get install -y software-properties-common build-essential python-software-properties


## PPA's
##==============================================================================
    #nodejs
    add-apt-repository -y ppa:chris-lea/node.js
    #UberWriter - Markdown editor (pandoc exports, lots of goodness)
    add-apt-repository -y ppa:w-vollprecht/ppa


## update rep sources
##==============================================================================
    apt-get update


## Install useful packages:
##==============================================================================
    # vim
    # git
    # vlc
    # nodejs
    # curl
    # gdebi - Command line interface to gdeb installer.
    # uberwriter - Markdown editor (pandoc exports, lots of goodness)
    # apt-file - Search apt for package based on fileName
    # terminator - For multiple terminal sessions in a single window and much more
    # vnstat - network usage
    # inotify-tools - allows to monitor filesystem events to run a command as soon as file changes
    apt-get install -y terminator vim git vlc nodejs curl gdebi uberwriter vnstat inotify-tools


## Install Node Package Manager (NPM)
##==============================================================================
    curl -s https://npmjs.org/install.sh | sudo sh

## TODO: Install node modules here
##==============================================================================

## Initialize spf13 vim distro
##==============================================================================
    curl http://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

## Create local bin directory
    mkdir ~/bin

## Setup up dropbox uploader
##==============================================================================
    git clone https://github.com/andreafabrizi/Dropbox-Uploader.git ~/Applications/Dropbox-Uploader
    chmod +x ~/Applications/Dropbox-Uploader/dropbox_uploader.sh
    ln -s ~/Applications/Dropbox-Uploader/dropbox_uploader.sh ~/bin/dropbox_uploader.sh
