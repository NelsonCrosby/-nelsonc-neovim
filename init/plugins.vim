
"=== Powerline ===
" Enable statusline
set modeline
set ls=2
" Statusline symbols
if has('gui_running') | let g:airline_powerline_fonts = 1 | endif
if exists('$POWERLINE_FONTS') | let g:airline_powerline_fonts = 1 | endif

"=== Emmet ===
let g:user_emmet_install_global = 0
autocmd FileType html EmmetInstall
let g:user_emmet_leader_key = '<C-e>'

"=== NERDTree ===
" NERDTree not being auto-enabled because I'm not quite satisfied yet
" Auto-enable NERDTree if no file specified on the command line
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Quit if NERDTree is the only buffer left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Binding to toggle NERDTree
"map <leader>t :NERDTreeToggle<CR>
