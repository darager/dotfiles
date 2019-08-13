cp bash/.bashrc ~/
cp tmux/.tmux.conf ~/
cp -r vim/.vim ~/
cp vim/.vimrc ~/

# install pathogen package manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install all the plugins
# ctags
sudo apt-get install exuberant-ctags
# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# NERDCommenter
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
# easytags
git clone https://github.com/xolox/vim-easytags.git ~/.vim/bundle/vim-easytags
# vim-misc
git clone https://github.com/xolox/vim-misc.git ~/.vim/bundle/vim-misc
# syntastic syntax cheching for a few languages
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
# Vim Powerline (makes status line more useful)
git clone https://github.com/Lokaltog/vim-powerline.git ~/.vim/bundle/vim-powerline

# plugins for python development
git clone --recurse-submodules https://github.com/python-mode/python-mode.git ~/.vim/bundle/python-mode
# jedi-vim
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
