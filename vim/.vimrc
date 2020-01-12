" disable backwards compatability
set nocp

" download all the vim plugins using vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'alvan/vim-closetag'

  Plug 'kien/ctrlp.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
call plug#end()

filetype off
filetype plugin on
filetype plugin indent on

" scrooloose/nerdtree
" open nerdtree when no file is specified
let NERDTreeShowHidden=1
" bind toggle nerdtree to <C-n>
map <C-n> :NERDTreeToggle<CR>

" scrooloose/nercommenter
" add spaces between the comment character and the line
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" itchyny/lightline.vim
let g:lightline = {
  \ 	'colorscheme': 'one',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" airblade/gitgutter
" don't remap anything automatically
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_diff_args = '-w' "ignore whitespace when diffing
nnoremap <Leader>s :GitGutterToggle<CR>

" vim-airline/vim-airline and vim-airline-themes
let g:AirlineTheme = 'molokai'
let g:airline_powerline_fonts = 1

" Yggdroot/indentLine
let g:indentLine_char = '┊'

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_shortcut = '>'

"-----------------------------------------------------------------------------"

set relativenumber

let mapleader=','

" set colorscheme
colorscheme molokai
set t_Co=256

" always show 2 lines above and below the cursor
set scrolloff=2

" shortcut for more convenient window management
nnoremap <Leader>w <C-w>

" remove the annoying green background that pops up once in a while
if &term =~ '256color'
	set t_ut=
endif

set history=999

set relativenumber
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed

set nomodeline

" Always display the status bar
set laststatus=2

" Height of the command bar
set cmdheight=1

" Enable line numbers
set number

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
set nohlsearch
set incsearch

" disable swap and backup files
set nobackup
set nowritebackup
set noswapfile

" Enable syntax highlihting
syntax enable

" enable faster performance
set lazyredraw
set ttyfast
