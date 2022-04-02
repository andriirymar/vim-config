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
set langmenu=en_US
set encoding=UTF-8
set clipboard=unnamedplus

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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'psliwka/vim-smoothie'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tomarrell/vim-npr'
call plug#end()

" ************* Color scheme *************
colorscheme solarized8

" ************* Keyboard binds **************
"inoremap jk <ESC>

" You can split the window in Vim by typing :split/:vsplit and navigate by CTRL+j/CTRL+k/CTRL+h/CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap<c-h> <c-w>h
nnoremap <c-l> <c-w>l
tnoremap <Esc> <c-\><c-n>

" ************* NERDTree config ***************
nmap <C-n> :NERDTreeToggle<CR>

" ************* FloatTeerm config ***************
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<C-b>'
let g:floaterm_height = 0.4
let g:floaterm_wintype = 'split'
let g:floaterm_position = 'bottom'

" ************* Go File config ***************
let g:vim_npr_file_names = ["", ".js", "/index.js"]

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" ************* NERDCommenter config ***************
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle

" ************* General bindings ***************
noremap <m-Down> :m+<CR>
noremap <m-Up> :m . -2<CR>
nmap <c-s> :w<CR>


" ************* FZF binds ***************
nnoremap <c-p> :Files<CR>
nnoremap <c-f> :Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" ************* COC config ***************
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

