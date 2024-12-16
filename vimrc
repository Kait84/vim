
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
set clipboard+=unnamedplus
set paste


"visuals
color desert "murphy
set guifont=Cascadia_Mono:h18
set number relativenumber
set cursorline


"editing
set shiftwidth=4
set tabstop=4 shiftwidth=4 expandtab
set ignorecase
set incsearch
set hlsearch
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.pdf,*.exe,*.img
set foldmethod=indent
"set foldlevel=99           "opensAllFoldsByDefault
set ttyfast


"plugins----------------------------------------------------------------
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'BurntSushi/ripgrep'
call plug#end()


"mappings---------------------------------------------------------------
nnoremap <SPACE> <Nop>
let mapleader=" "


"scripting--------------------------------------------------------------
function! DrawStatusLine()
    hi StatusLine ctermbg=darkGray ctermfg=white
    set laststatus=2
    set statusline=\ %n\ %M\ \ %5.30f                                       "LeftSide: buffer, fileUnwritten, fileName
    set statusline+=%=
    set statusline+=\ %3.3b\/0x%2.2B\ \ \ \ row-col:%l-%c\ \ %p%%\ \ %Y\ \     "RightSide: char:ASCII/HEX, row-collumn, pageInPercent, fileType  
endfunction

function! StartUp()
    if argc() == 0
        NERDTree
    endif
    call DrawStatusLine()
endfunction

autocmd VimEnter * call StartUp()


