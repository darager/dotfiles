#!/usr/bin/env bash

sudo apt-get install neovim

ln ./.bashrc ~/.bashrc
ln ./.tmux.conf ~/.tmux.conf

mkdir ~/.config/nvim
ln ./init.vim ~/.config/nvim/init.vim

# install plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

clear
echo "In order to install the plugins open vim and run $(tput bold)$(tput setaf 0):PlugInstall"
