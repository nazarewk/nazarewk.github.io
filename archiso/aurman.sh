#!/bin/sh
mkdir -p /tmp/aur
trap 'rm -rf /tmp/aur' EXIT
cd /tmp/aur
wget https://aur.archlinux.org/cgit/aur.git/snapshot/aurman.tar.gz
tar zxf aurman.tar.gz
cd aurman
makepkg -si
