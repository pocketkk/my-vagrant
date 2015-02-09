#! /usr/bin/env bash

echo
echo "Starting scripts run as User (Vagrant) ..."

##
#     Install RVM
##

echo
echo "Installing Ruby Version Manager"

curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm

##
#     Install Ruby
##

rvm install ruby 2.2.0
rvm use 2.2.0

##
#     Add gemrc file and set all gems to no doc
##

touch ~/.gemrc
echo 'gem: --no-document' >> ~/.gemrc

#
#    Install my Oh-My-Zsh
##

echo
echo "Installing Oh-My-Zsh ..."

git clone https://github.com/pocketkk/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
printf 'vagrant' | chsh -s /usr/bin/zsh vagrant
echo 'export PATH=vendor/bin:$PATH'  >> /home/vagrant/.zshrc
echo "alias art='php artisan'" >> /home/vagrant/.zshrc

##
#     Install my .Vim files
##

git clone https://github.com/pocketkk/my-vim.git /home/vagrant/.vim

##
#     Install Rails
##

gem install foreman --no-ri --no-rdoc
gem install rails --no-ri --no-rdoc



