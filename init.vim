set nocp " disable backwards compatability
filetype off

call plug#begin('~/.config/nvim/plugged')

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

  " Autocompletion / Syntax
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader=','

set t_Co=256
colorscheme molokai

syntax enable
filetype plugin on
filetype plugin indent on

let NERDTreeShowHidden=1
let g:NERDToggleCheckAllLines = 1

let g:gitgutter_map_keys = 0

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set number relativenumber

set mouse=a

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

" COC specific settings
" show coc status in statusline
set statusline+=%{coc#status()}

" start or refresh completion
inoremap <silent><expr> <c-space> coc#refresh()

" list commands available
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>

" rename the current word in the cursor
nnoremap <leader>r <Plug>(coc-rename)

" format the selected code
nnoremap <leader>f <Plug>(coc-format-selected)
vnoremap <leader>f <Plug>(coc-format-selected)

" run code action
vnoremap <leader>ca <Plug>(coc-codeaction-selected)
nnoremap <leader>ca <Plug>(coc-codeaction-selected)

" gd - go to definition of word under cursor
nnoremap gd <Plug>(coc-definition)

" gr - find references
nnoremap gr <Plug>(coc-references)

" show documentation of thing under cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
