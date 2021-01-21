"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sommaire
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
" Colors and Fonts
" Fichiers, backups and undo
" Text, tab and indent related
" Déplacements
" Nerd Tree
" Airline
" Fzf
" Coc
" vim plug



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Combien de lignes sont enregistrées dans l'historique
set history=500

" Numérote les lignes
set nu

" Recharge le fichier si il est modifié de l'extérieur
set autoread
au FocusGained,BufEnter * checktime

" Map de la touche leader
let mapleader = ","

" Sauvegarde rapide
nmap <leader>w :w!<cr>

" Montre la position actuelle du curseur
set ruler

" Un buffer est caché si il est abandonné
set hid

" Configure la touche supprimer correctement
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Améliore la recherche
set ignorecase
set smartcase
set hlsearch
set incsearch

" Redessine après avoir exécuté une marcro
set lazyredraw

" Active les regular expression
set magic

" Affiche les couples de parenthèses
set showmatch
set mat=2

" Désactive les sons d'erreur
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Ajoute une marge de 1 à gauche
set foldcolumn=1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable
set encoding=utf8

colorscheme gruvbox
set bg=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fichiers, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup
set nowb
set noswapfile



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Utiliser des espaces à la place des tabs
set expandtab

set smarttab

" 1 tab=4 espaces
set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai 
set si 
set wrap 



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Déplacements
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Déplacements entre les fenêtres
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Déplacements entre les buffers 
map gk :bn<cr>
map gj :bp<cr>
map gd :bd<cr>  



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <C-p> :Files<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:user_emmet_leader_key=','


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Voici les plugins COC à installer : 
" :CocInstall coc-tsserver coc-json coc-html coc-css coc-vetur 

" Pour vérifier l'install : 
" :checkhealth


" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'preservim/nerdtree'

" HTML CSS shortcut
Plug 'mattn/emmet-vim'

" Syntastic pour les vérifications d'erreurs 
Plug 'vim-syntastic/syntastic'

" Js syntax highlight
Plug 'othree/yajs.vim'

" Jsx syntax highlight
Plug 'mxw/vim-jsx'

" Fuzzyfind file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autopair for parenthesis
Plug 'jiangmiao/auto-pairs'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Custom bar + tab
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()
