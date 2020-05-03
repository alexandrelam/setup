set number	
set linebreak
set showbreak=+++
set textwidth=100	
set showmatch	
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch
 
set autoindent	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	
set tabstop=4

call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'

Plug 'itchyny/lightline.vim'

Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()
