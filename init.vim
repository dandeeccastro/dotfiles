set number 

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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'arzg/vim-colors-xcode'
Plug 'morhetz/gruvbox'
Plug 'nekonako/xresources-nvim'

call plug#end()

map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>
inoremap jk <Esc>

colorscheme gruvbox 

nnoremap <Leader>. :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>= mzgg=G`z 
