#!/bin/bash

# PPA for latest node js
add-apt-repository ppa:chris-lea/node.js  

# update rep sources
apt-get update

## Install useful packages:
#	vim
#	git
#	vlc
#	nodejs
#	curl
#	gdebi - Command line interface to gdeb installer. (resolves dependencies, which dpkg doesn't)
apt-get install vim git vlc nodejs curl gdebi

# Install Node Package Manager (NPM)
curl -s https://npmjs.org/install.sh | sudo sh
