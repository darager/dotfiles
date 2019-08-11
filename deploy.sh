cp bash/.bashrc ~/
cp tmux/.tmux.conf ~/
cp -r vim/.vim ~/
cp vim/.vimrc ~/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
eurl -sL install-node.now.sh | sh

echo "In order to install the vim plugins run :PlugInstall inside vim"
