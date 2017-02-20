
" Use `jk` to return to normal mode
"inoremap jk <Esc>
if has("nvim")
  "tmap jk <Esc>
endif

" Get rid of annoying search highlight
nnoremap <Esc><Esc> :nohlsearch<CR>
" Clear all trailing whitespace
nnoremap <leader><Space> :let _s=@/<bar>:let _w=winsaveview()<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:call winrestview(_w)<CR>

" Move current line(s) up/down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Switch windows
nnoremap <A-h> <C-w><C-h>
nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>
nnoremap <A-l> <C-w><C-l>
if has("nvim")
  tmap <A-h> <Esc><A-h>
  tmap <A-j> <Esc><A-j>
  tmap <A-k> <Esc><A-k>
  tmap <A-l> <Esc><A-l>
endif

if has("nvim")
  " Use escape to switch to normal mode
  tnoremap <Esc> <C-\><C-n>
endif
