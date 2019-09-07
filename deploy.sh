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

# install komodo-remote-debugging-package for python remote debugging
cd ~/.vim
mkdir vimhelpers && cd vimhelpers
curl http://downloads.activestate.com/Komodo/releases/11.1.0/remotedebugging/Komodo-PythonRemoteDebugging-11.1.0-91033-linux-x86.tar.gz --output komodo-remote.tar.gz
tar -xzvf komodo-remote.tar.gz
rm komodo-remote.tar.gz
# in order for komodo to work the dbgp folder has to be in the folder that the binary is in
mv ~/.vim/vimhelpers/Komodo-PythonRemoteDebugging-11.1.0-91033-linux-x86/python3lib/dbgp ~/.vim/vimhelpers/Komodo-PythonRemoteDebugging-11.1.0-91033-linux-x86/

echo "In order to install the plugins open vim and run $(tput bold)$(tput setaf 0):PlugInstall"
