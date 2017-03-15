#!/bin/bash

cp -R ~/.bashrc .
cp -R ~/.gitconfig .

cp -R ~/.config/.alias .config/.alias
cp -R ~/.config/monitors.xml .config/monitors.xml
cp -R ~/.config/fish .config

cp -R ~/.config/sublime-text-3 .config/
cp -R ~/.config/terminator .config/
cp -R ~/.atom .
cp -R ~/.config/Atom .config/

cp -R ~/.config/pgcli .config/

mkdir -p .ssh
cp -R ~/.ssh/id_rsa.pub .ssh/id_rsa.pub
cp -R ~/.ssh/config .ssh/config

cp -R ~/.irssi .
cp -R ~/Documents/INSTALLATION.txt .

mkdir -p bin
find ~/bin -maxdepth 1 -name "*.sh" -exec cp {} bin \;

mkdir -p etc/resolvconf/resolv.conf.d
sudo cp /etc/resolvconf/resolv.conf.d/* ./etc/resolvconf/resolv.conf.d

sudo cp -R /etc/udev/hwdb.d/90-logitech-m-560.hwdb .

cp /home/julien/work/tools/.sqlmanager .sqlmanager

git add -A
git commit -m "sync"
git push
