#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade

# install latest version of neovim (required by coc-vim)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get install neovim

# install plug.vim
mkdir ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install nodejs
sudo apt-get install nodejs

if [ ! -f ~/.config/init.vim ]; then
    touch ~/.config/init.vim
fi

if [ ! -f ~/.bashrc ]; then
    touch ~/.bashrc
fi

if [ ! -f ~/.tmux.conf ]; then
    touch ~/.tmux.conf
fi

echo "source ~/dotfiles/.bashrc" > ~/.bashrc
echo "source ~/dotfiles/.tmux.conf" > ~/.tmux.conf
echo "source ~/dotfiles/init.vim" > ~/.config/nvim/init.vim


clear
echo "In order to install the plugins open vim and run $(tput bold)$(tput setaf 0):PlugInstall"
