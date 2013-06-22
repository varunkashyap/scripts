!/bin/bash

## Add software-properties-common and build-essential for use below
##  mainly required for the add-apt-repository and building software from source
##==============================================================================
    apt-get install software-properties-common build-essential


## PPA's
##==============================================================================
    #nodejs
    add-apt-repository ppa:chris-lea/node.js
    #UberWriter - Markdown editor (pandoc exports, lots of goodness)
    add-apt-repository ppa:w-vollprecht/ppa


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
    apt-get install terminator vim git vlc nodejs curl gdebi uberwriter vnstat


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
    ln -s ~/bin/dropbox_uploader.sh ~/Applications/Dropbox-Uploader.gitder/dropbox_uploader.sh
