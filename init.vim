execute pathogen#infect()
set modeline number cursorline

"inoremap jk <ESC>
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <leader><Space> :let _s=@/<bar>:let _w=winsaveview()<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:call winrestview(_w)<CR>
command BYE wqall
" Move line mappings
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <A-h> <C-w><C-h>
nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>
nnoremap <A-l> <C-w><C-l>

filetype plugin indent on
"set textwidth=76

autocmd FileType * set ts=2 sw=2 et

autocmd FileType make setlocal ts=8 sw=0 noet
autocmd FileType conf,gitconfig set ts=8 sw=0 noet
autocmd FileType html set ts=4 sw=4

autocmd FileType c,cpp set ts=4 sw=4
autocmd FileType lua set ts=4 sw=4
autocmd FileType go set ts=8 sw=0 noet
autocmd FileType python set ts=4 sw=4

let g:is_posix=1
syntax on
set encoding=utf8

" IDE mode
let g:netrw_liststyle = 3
function! LoadDirTree()
  28vnew
  let g:netrw_chgwin = winnr() + 1
  edit .
endfunction
function! LoadIDEMode()
  call LoadDirTree()
endfunction
map <leader>T :call LoadDirTree()<CR>

" Line numbers
function! SetLineNumbers()
  if winwidth(0) > 84
    set number
  else
    set nonumber
  endif
endfunction
autocmd WinEnter * call SetLineNumbers()
autocmd WinLeave * call SetLineNumbers()

" Line styling
highlight LineNr ctermbg=234
highlight CursorLineNr ctermbg=233
highlight CursorLine cterm=none
autocmd FileType netrw hi CursorLine cterm=underline
autocmd FileType netrw au BufEnter <buffer> hi CursorLine cterm=underline
autocmd FileType netrw au BufLeave <buffer> hi CursorLine cterm=none

" Enable statusline
set ls=2
" Statusline symbols
if has('gui_running') | let g:airline_powerline_fonts = 1 | endif
if exists('$POWERLINE_FONTS') | let g:airline_powerline_fonts = 1 | endif

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html EmmetInstall
let g:user_emmet_leader_key = '<C-e>'

" nvim-specific config
if has('nvim')
  set splitbelow
  "set bufhidden=delete
  tnoremap <Esc> <C-\><C-n>

  tmap <A-h> <Esc><A-h>
  tmap <A-j> <Esc><A-j>
  tmap <A-k> <Esc><A-k>
  tmap <A-l> <Esc><A-l>
  "tmap jk <Esc>
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
