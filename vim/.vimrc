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

  Plug 'vim-vdebug/vdebug'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'vim-syntastic/syntastic'
  Plug 'xolox/vim-easytags'
  Plug 'xolox/vim-misc' "required for easytags

  Plug 'kien/ctrlp.vim'
  Plug 'majutsushi/tagbar'
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

" majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" vim-airline/vim-airline and vim-airline-themes
let g:AirlineTheme = 'molokai'
let g:airline_powerline_fonts = 1

" Yggdroot/indentLine
let g:indentLine_char = '┊'

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_shortcut = '>'

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checkers = ['python3']
let g:syntastic_python_pylint_args = '-E'

" ycm-core/YouCompleteMe
nnoremap <Leader>g :YcmCompleter GoTo<CR>

" vim-vdebug/vdebug
let g:vdebug_keymap = {
\    "run" : "<F5>",
\    "run_to_cursor" : "<F9>",
\    "step_over" : "<F2>",
\    "step_into" : "<F3>",
\    "step_out" : "<F4>",
\    "close" : "<F6>",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<F10>",
\    "get_context" : "<F11>",
\    "eval_under_cursor" : "<F12>",
\    "eval_visual" : "<Leader>e",
\}

"-----------------------------------------------------------------------------"
" normal settings from here on now
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

set number
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

" disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
