#!/bin/bash

HOME=$1

# Updated ubuntu
apt update \
&& apt upgrade -y

# Install essential tools
sudo apt install -y automake libevent-dev bison byacc

# Install tmux
sudo mkdir /usr/local/src/tmux
sudo git clone https://github.com/tmux/tmux /usr/local/src/tmux
cd /usr/local/src/tmux
sudo chmod +x autogen.sh
sudo ./autogen.sh
sudo ./configure --prefix=/usr/local
sudo make
sudo make install

echo `tmux -v`