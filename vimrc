execute pathogen#infect()

inoremap jk <ESC>
let mapleader = "\<Space>"

filetype plugin indent on
set shiftwidth=4
set expandtab

syntax on
set encoding=utf8

" Auto-enable NERDTree
autocmd vimenter * NERDTree
" Quit if NERDTree is the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Binding to toggle NERDTree
map <leader>t :NERDTreeToggle<CR>


" set spell spelllang=en_nz
