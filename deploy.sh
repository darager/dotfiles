cp bash/.bashrc ~/
cp tmux/.tmux.conf ~/
cp -r vim/.vim ~/
cp vim/.vimrc ~/

# install plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install custom font for powerline
sudo apt-get install fonts-powerline

clear
echo "In order to install the plugins open vim and run $(tput bold)$(tput setaf 0):PlugInstall"
