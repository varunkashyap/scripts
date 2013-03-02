#!/bin/bash

# PPA's
add-apt-repository ppa:chris-lea/node.js  #nodejs
add-apt-repository ppa:w-vollprecht/ppa  #UberWriter - Markdown editor (pandoc exports, lots of goodness)

# update rep sources
apt-get update

## Install useful packages:
#	vim
#	git
#	vlc
#	nodejs
#	curl
#	gdebi - Command line interface to gdeb installer. (resolves dependencies, which dpkg doesn't)
#	uberwriter - Markdown editor (pandoc exports, lots of goodness)
apt-get install vim git vlc nodejs curl gdebi uberwriter

# Install Node Package Manager (NPM)
curl -s https://npmjs.org/install.sh | sudo sh
