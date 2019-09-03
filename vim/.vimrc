" disable backwards compatability
set nocp

" download all the vim plugins using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-misc' "required for easytags
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'vim-vdebug/vdebug'
Plug 'vim-syntastic/syntastic'
call plug#end()



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
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }


" airblade/gitgutter
" don't remap anything automatically
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
nnoremap <Leader>s :GitGutterToggle<CR>


" majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>


" vim-airline/vim-airline and vim-airline-themes
let g:AirlineTheme = 'molokai'
let g:airline_powerline_fonts = 1


" kien/ctrlp.vim
nnoremap <Leader>f :CtrlP<CR>


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
let g:syntastic_python_pylint_args = '-E'


filetype plugin on

"-----------------------------------------------------------------------------"
" normal settings from here on now
let mapleader=','

" set colorscheme
colorscheme molokai
set t_Co=256

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
set nohlsearch
set incsearch

" disable swap and backup files
set nobackup
set nowritebackup
set noswapfile
