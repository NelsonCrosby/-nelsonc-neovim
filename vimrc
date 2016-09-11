execute pathogen#infect()

inoremap jk <ESC>
let mapleader = "\<Space>"

filetype plugin indent on
set shiftwidth=4
set expandtab

syntax on
set encoding=utf8

" Close file and open directory tree
map <leader>t :e .<CR>
map <leader>T :e! .<CR>

" NERDTree not being auto-enabled because I'm not quite satisfied yet
" Auto-enable NERDTree if no file specified on the command line
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Quit if NERDTree is the only buffer left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Binding to toggle NERDTree
"map <leader>t :NERDTreeToggle<CR>


" set spell spelllang=en_nz
