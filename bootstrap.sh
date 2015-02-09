#! /usr/bin/env bash

##
#    Set environment variables
##

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

##
#    Install GIT MAKE POSTGRES
##

apt-get install -y git make postgresql libpq-dev

##
#    Configure postgresql
##

echo
echo "Configuring postgres ..."
sudo -u postgres psql -e -c "CREATE USER vagrant WITH PASSWORD 'vagrant';"
sudo -u postgres psql -e -c "CREATE DATABASE vagrant ENCODING 'UTF-8';"
sudo -u postgres psql -e -c "GRANT ALL PRIVILEGES ON DATABASE vagrant TO vagrant;"

##
#    Install RVM
##

echo
echo "Installing Curl and dependencies (if needed) ..."

sudo apt-get install -y curl libc6 libcurl3 zlib1g

##
#    Install oh-my-zsh
##

echo
echo "Installing Oh-My-Zsh ...."

sudo apt-get install -y zsh

##
#     Install T-Mux
##

echo 
echo "Installing TMux ...."

sudo apt-get install -y tmux

##
#     Install nodejs for Rails
##

echo
echo "Installing Nodejs ...."

sudo apt-get install -y nodejs

