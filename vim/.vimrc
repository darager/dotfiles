" enable pathogen package manager
set nocp
source ~/.vim/autoload/pathogen.vim "location of my pathogen.vim
call pathogen#infect()
call pathogen#helptags()

let NERDTreeShowHidden=1

" open nerdtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" bind toggle nerdtree to <C-n>
map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on

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

