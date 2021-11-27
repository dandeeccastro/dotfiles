set number 
set relativenumber 

set tabstop=4
set shiftwidth=4
set scrolloff=3

set autoindent 
set ruler 
set cursorline 

set showcmd 
set incsearch 
set ignorecase 
set smartcase 
set hidden 
set wildmenu

set foldmethod=indent
set foldnestmax=2

syntax on 

call plug#begin( stdpath('data') . './plugged' )

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'sheerun/vim-polyglot'
Plug 'arzg/vim-colors-xcode'
Plug 'morhetz/gruvbox'

call plug#end()

map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>

colorscheme gruvbox 

nnoremap <Leader>. :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>= mzgg=G`z 
