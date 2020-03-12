"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'dag/vim-fish'
Plug 'dzeban/vim-log-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jistr/vim-nerdtree-tabs'

" Programming languages
Plug 'vim-python/python-syntax'

" Color shemes
Plug 'morhetz/gruvbox'

" Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme gruvbox
set background=dark
let g:airline_theme='base16'
let g:airline_enable_fugitive=1
let g:airline_powerline_fonts = 1

let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='<ENTER>'

let g:indent_guides_enable_on_vim_startup = 1
let g:python_highlight_all = 1

set number relativenumber
set nu rnu
set listchars=tab:··
set list
set tabstop=2
set shiftwidth=4
set smarttab

set hlsearch
set incsearch

set wrap

syntax on

" Mappings

map <Space> <leader>

map <leader>n :NERDTreeTabsToggle<CR>
map <leader>l :set syntax=log<CR>
map <leader>w :set nowrap<CR>
map <leader>i :IndentGuidesToggle<CR>

nnoremap <C-l> gt
nnoremap <C-h> gT

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
