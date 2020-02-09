#!/usr/bin/env bash

mkdir ~/.config/nvim

ln ./.bashrc ~/
ln ./.tmux.conf ~/
ln ./init.vim ~/.config/nvim

# install plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install neovim
sudo apt-get install neovim

clear
echo "In order to install the plugins open vim and run $(tput bold)$(tput setaf 0):PlugInstall"
