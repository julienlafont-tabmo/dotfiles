#!/bin/bash

cp -R ~/.bashrc .
cp -R ~/.profile .
cp -R ~/.gitconfig .

mkdir -p .config/fish
cp -R ~/.config/.alias .config/.alias
cp -R ~/.config/monitors.xml .config/monitors.xml
cp -R ~/.config/fish/config.fish .config/fish/config.fish

cp -R ~/.config/sublime-text-3 .config/
cp -R ~/.config/terminator .config/

mkdir -p .IntelliJIdea14/config
cp -R ~/.IntelliJIdea14/config .IntelliJIdea14

mkdir -p .ssh
cp -R ~/.ssh/id_rsa.pub .ssh/id_rsa.pub

cp -R ~/.irssi .
cp -R ~/Documents/INSTALLATION.txt .

mkdir -p bin
find ~/bin -maxdepth 1 -name "*.sh" -exec cp {} bin \;

mkdir -p etc/resolvconf/resolv.conf.d
sudo cp /etc/resolvconf/resolv.conf.d/* ./etc/resolvconf/resolv.conf.d
