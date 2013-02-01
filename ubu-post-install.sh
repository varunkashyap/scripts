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
apt-get install vim git vlc nodejs
