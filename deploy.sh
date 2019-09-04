cp bash/.bashrc ~/
cp tmux/.tmux.conf ~/
cp -r vim/.vim ~/
cp vim/.vimrc ~/

# install plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install custom font for powerline
sudo apt-get install fonts-powerline

# install ctags
sudo apt-get install exuberant-ctags

# install youcompleteme
sudo apt-get install build-essential cmake python-dev python3-dev
mkdir ~/.vim/plugged/ && cd ~/.vim/plugged/
git clone https://github.com/ycm-core/YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all

echo "In order to install the plugins open vim and run $(tput bold)$(tput setab 7)$(tput setaf 0):PlugInstall"
