set nocp " disable backwards compatibility
filetype off

call plug#begin('~/.config/nvim/plugged')

" Navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'octref/RootIgnore'

" Editing
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Visual
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocompletion / Syntax
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader=' '

set t_Co=256
colorscheme gruvbox
set background=dark

syntax enable
filetype plugin on
filetype plugin indent on

let NERDTreeShowHidden=1
let g:NERDToggleCheckAllLines = 1

let g:gitgutter_map_keys = 0

let g:ale_open_list = 1
let g:ale_sign_column_always = 1
let g:ale_lsp_show_message_severity = 'error'
let g:ale_python_pylint_options = '--errors-only'

let g:airline_theme='hybrid'

let g:highlightedyank_highlight_duration = 100

let g:user_emmet_leader_key='<leader>'

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
set lazyredraw

" disable swap and backup files
set nobackup
set nowritebackup
set noswapfile

" enable undo function after file has been closed
set undofile
set undodir=/tmp

" make substitute command interactive
set inccommand=nosplit

" automatically resize when new pane with tmux is created
autocmd VimResized * :wincmd =

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

" open FZF search
nnoremap <C-p> :call <SID>search_files()<CR>
function! s:search_files()
    " at least it works
    let isRepo = len(system("git status")) >= 70
    if(isRepo)
        :GFiles
    else
        :Files
    endif
endfunction

" open fugitive window
nnoremap <leader>gs :Gstatus<CR>

" toggle nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" indent lines and reselect visual group
vnoremap < <gv
vnoremap > >gv

" traverse wrapped lines like any other lines
nnoremap j gj
nnoremap k gk

" COC specific settings
" show coc status in statusline
set statusline+=%{coc#status()}

" start or refresh completion
inoremap <silent><expr> <c-space> coc#refresh()

" rename the current word in the cursor
nmap <leader>r <Plug>(coc-rename)

" format the selected code
nmap <leader>f <Plug>(coc-format-selected)
vmap <leader>f <Plug>(coc-format-selected)

" run code action
nmap <leader>ca <Plug>(coc-codeaction)
vmap <leader>ca <Plug>(coc-codeaction-selected)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" go to definition
nmap gd <Plug>(coc-definition)

" find references
nmap gr <Plug>(coc-references)

" show documentation of thing under cursor
nmap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" jump between errors
nmap <silent> <leader>ee <Plug>(ale_next_wrap)
nmap <silent> <leader>ge <Plug>(ale_previous_wrap)
