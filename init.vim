set nu rnu 
set tabstop=2
set shiftwidth=2
set scrolloff=3 
set autoindent 
syntax on

set noshowmode 

call plug#begin( stdpath('data') . './plugged' )

Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'itchyny/lightline.vim'

call plug#end()

map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>

