"general----------------------------------------------------------------
set nocompatible
filetype off
filetype plugin indent on
syntax on 
set showcmd
set showmode
set hidden
set ruler
set smartindent


"visuals
color murphy
set guifont=Cascadia_Mono:h18
set number relativenumber
set cursorline


"editing
set shiftwidth=4
set tabstop=4 shiftwidth=4 expandtab
set ignorecase
set incsearch
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.pdf,*.exe,*.img
set foldmethod=manual
set ttyfast


"plugins----------------------------------------------------------------
call plug#begin('~/.vim/plugged')
    Plug 'dracula/vim'
    Plug 'mhinz/vim-startify'
    Plug 'preservim/nerdtree'
    Plug 'BurntSushi/ripgrep'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
call plug#end()


"mappings---------------------------------------------------------------
nnoremap <SPACE> <Nop>
let mapleader=" "

"scripting--------------------------------------------------------------
"code-folding
augroup filetype_fim
    autocmd!
    autocmd FileType vim setlocal foldmethod=indent
augroup END


"statusbar--------------------------------------------------------------
"set statusline=%F%m%r%h%w\ [FORMAT]\ [%{&ff}]\ [%Y]\ [%3l/%L,%3c]

