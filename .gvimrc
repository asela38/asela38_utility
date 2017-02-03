
"Leader Mapping
let mapleader="\<Space>"

set guifont=Consolas:h9:cANSI:qDRAFT
set mouse=c
colorscheme torte
set guioptions=egmL
set number
set relativenumber 
set tabstop=2
set shiftwidth=2
set modifiable
set hidden
set hlsearch
set nowrap
set path+=**
set wildmenu

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_winsize=24

set expandtab        "replace <TAB> with spaces
set softtabstop=3 
set shiftwidth=3 

"folding
set foldmethod=indent

"My Leader
"Leader Mapping
let mapleader="\<Space>"

nnoremap <Leader><Leader> za
nnoremap <Leader>w <C-W><C-W>
nnoremap <Leader>o <C-W>o
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P
nnoremap <Leader>api :so \workspace\vim-workspace\cb-api.ws<CR>
nnoremap <Leader>gb :ls<CR>:b 
nnoremap <Leader>n o<ESC>
nnoremap <Leader>vimrc :so $VIM\.gvimrc<CR> 
nnoremap <Leader>vimrce :e $VIM\.gvimrc<CR> 
