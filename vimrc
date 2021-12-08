set number 
set relativenumber 

set tabstop=2
set shiftwidth=2
set scrolloff=3

set autoindent 
set cursorline 

set showcmd
set incsearch 
set ignorecase
set smartcase 
set hidden 
set wildmenu 
set nowrap

set background=dark

set foldmethod=indent
set foldnestmax=3

syntax on 

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'sheerun/vim-polyglot'

call plug#end()

map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>

nnoremap <Leader>. :e ~/.vimrc<CR>     " Open this file
nnoremap <Leader>= mzgg=G`z            " Auto indent entire file

autocmd FileType cc nnoremap <buffer> <Leader>r :w<CR>:!clear;g++ -o %:r.out -Wall -Wextra -pedantic % && ./%:r.out<CR>
autocmd FileType cpp nnoremap <buffer> <Leader>r :w<CR>:!clear;g++ -o %:r.out -Wall -Wextra -pedantic % && ./%:r.out<CR>
