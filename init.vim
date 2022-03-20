syntax on
set background=dark
set number
set tabstop=2
set updatetime=300
set smarttab
set cindent
set shiftwidth=2
set expandtab
set mouse=a
set noerrorbells
set visualbell
set textwidth=100
set noswapfile
set scrolloff=7
set encoding=UTF-8

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release' }
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'hashivim/vim-terraform'
call plug#end()

" ************* Color scheme *************
colorscheme gruvbox

" ************* Keyboard binds **************
inoremap jk <ESC>
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A

" You can split the window in Vim by typing :split/:vsplit and navigate by CTRL+j/CTRL+k/CTRL+h/CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" ************* NERDTree config ***************
nmap <C-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" ************* NERDCommenter config ***************
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle

" ************* COC config ***************
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
