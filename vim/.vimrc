" disable backwards compatability
set nocp
" enable pathogen package manager
source ~/.vim/autoload/pathogen.vim "location of my pathogen.vim
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" NERDTree
" open nerdtree when no file is specified
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" bind toggle nerdtree to <C-n>
map <C-n> :NERDTreeToggle<CR>

" Synstastic
" configure syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']  "" or ['flake8', 'pylint'], etc
let g:syntastic_python_pylint_args = '-E'
"" to show it accepts a string of args, also:
let g:syntastic_python_pylint_args = '--rcfile=~/.pylintrc -E'

" vim-pymode
" run python in debug mode
nnoremap <Leader>t :python3 %<CR>

"##############################################################################
let mapleader=','

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
colorscheme molokai

" enable faster performance
set lazyredraw
set ttyfast

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

" disable swap and backup files
set nobackup
set nowritebackup
set noswapfile
