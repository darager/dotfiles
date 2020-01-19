rm ~/.bashrc
rm ~/.tmux.conf
rm -rf ~/.config/nvim

ln ./.bashrc ~/
ln ./.tmux.conf ~/
mkdir ~/.config/nvim
ln ./init.vim ~/.config/nvim

# install plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install neovim
sudo apt-get install neovim

# install custom font for powerline
sudo apt-get install fonts-powerline

clear
echo "In order to install the plugins open vim and run $(tput bold)$(tput setaf 0):PlugInstall"
