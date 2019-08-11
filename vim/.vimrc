" plugins
call plug#begin('~/.vim/plugged')

" init plugin system
call plug#end()



" Vim settings rather than Vi
set nocompatible
set history=999

" make tabwidth smaller
set tabstop=4

set nomodeline

" Always display the status bar
set laststatus=2

" Height of the command bar
set cmdheight=1

" relative numbers
set relativenumber
" Enable syntax highlihting
syntax enable

" set colorsheme
colorscheme distinguished

" disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Display the cursorline
set cursorline

" highlight 80th column
set colorcolumn=80

" show matching brackets
set showmatch

" turn off error sounds
set noerrorbells

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

