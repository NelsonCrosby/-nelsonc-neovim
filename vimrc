execute pathogen#infect()
set modeline

inoremap jk <ESC>
let mapleader = "\<Space>"

filetype plugin indent on
set textwidth=76

autocmd FileType * set ts=2 sw=2 et
autocmd FileType make setlocal ts=8 sw=0 noet
autocmd FileType python set ts=4 sw=4
autocmd FileType go set ts=8 sw=0 noet

syntax on
set encoding=utf8

" Close file and open directory tree
map <leader>t :e .<CR>
map <leader>T :e! .<CR>

" Enable statusline
set ls=2
" Statusline symbols
if has('gui_running')
  let g:airline_powerline_fonts = 1
endif

" NERDTree not being auto-enabled because I'm not quite satisfied yet
" Auto-enable NERDTree if no file specified on the command line
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Quit if NERDTree is the only buffer left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Binding to toggle NERDTree
"map <leader>t :NERDTreeToggle<CR>


" set spell spelllang=en_nz
