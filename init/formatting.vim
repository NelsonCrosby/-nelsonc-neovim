"=== General settings ===
syntax on           " Enable syntax
filetype plugin on  " Enable loading plugins based on filetype
filetype indent on  " Enable setting indentation based on filetype
"set textwidth=76   " Auto-newline

"=== Specific settings ===
let g:is_posix=1    " Stop vim complaining about perfectly valid POSIX sh syntax

"=== Indent settings ===
" Default (2-wide soft tabs)
autocmd FileType * set ts=2 sw=2 et
" 8-wide hard tabs
autocmd FileType conf,gitconfig set ts=8 sw=0 noet
autocmd FileType go set ts=8 sw=0 noet
autocmd FileType make setlocal ts=8 sw=0 noet
" 4-wide soft tabs
autocmd FileType c,cpp set ts=4 sw=4
autocmd FileType html set ts=4 sw=4
autocmd FileType lua set ts=4 sw=4
autocmd FileType python set ts=4 sw=4
