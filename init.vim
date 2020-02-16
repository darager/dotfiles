set nocp " disable backwards compatability
filetype off

call plug#begin('~/.vim/plugged')

  " Navigation
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'kien/ctrlp.vim'
  Plug 'octref/RootIgnore'

  " Editing
  Plug 'Yggdroot/indentLine'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'jreybert/vimagit'

  " Visual
  Plug 'scrooloose/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'tomasr/molokai'
  Plug 'vim-syntastic/syntastic'

call plug#end()

let mapleader=','

filetype plugin on
filetype plugin indent on

let NERDTreeShowHidden=1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:gitgutter_map_keys = 0

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax enable

set t_Co=256
colorscheme molokai

set number relativenumber

set expandtab
set shiftwidth=4
set smartindent
set tabstop=2

set history=999
set cursorline
set scrolloff=3

set nomodeline
set noerrorbells

set clipboard=unnamed

set incsearch
set nohlsearch
set showmatch
set ignorecase
set smartcase

" disable swap and backup files
set nobackup
set nowritebackup
set noswapfile

set lazyredraw

" enable undo function after file has been closed
set undofile
set undodir=/tmp

" highlight 81 column
call matchadd('ColorColumn', '\%81v', 100)
highlight ColorColumn ctermfg=magenta

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" ignore some typing mistakes in ex-mode
ca W w
ca Wq wq

" open and reload vimrc
ca vimrc tabe $MYVIMRC
nnoremap <leader>vr :so $MYVIMRC<CR>

" sort the current paragraph
nnoremap <leader>s vip!sort<CR>

" open CtrlP search
nnoremap <C-p> :CtrlP<CR>

" open Magit window
nnoremap <leader>gs :Magit<CR>

" toggle nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" indent lines and reselect visual group
vnoremap < <gv
vnoremap > >gv
