"=== IDE Mode ===

let g:netrw_liststyle = 3

function! LoadDirTree()
  28vnew
  let g:netrw_chgwin = winnr() + 1
  edit .
endfunction

function! LoadIDEMode()
  call LoadDirTree()
endfunction

command BYE wqall
map <leader>T :call LoadDirTree()<CR>
