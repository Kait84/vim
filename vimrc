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
set clipboard+=unnamed
set paste


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
set foldmethod=indent
set ttyfast


"plugins----------------------------------------------------------------
call plug#begin('~/.vim/plugged')
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
function! StartUp()
    if argc() == 0
        NERDTree
    endif
endfunction

autocmd VimEnter * call StartUp()


"statusbar--------------------------------------------------------------
"set statusline=%F%m%r%h%w\ [FORMAT]\ [%{&ff}]\ [%Y]\ [%3l/%L,%3c]



