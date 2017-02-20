" Window positioning
set splitbelow

" Line numbers
set number
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
set cursorline
highlight LineNr ctermbg=234
highlight CursorLineNr ctermbg=233
highlight CursorLine cterm=none
autocmd FileType netrw hi CursorLine cterm=underline
autocmd FileType netrw au BufEnter <buffer> hi CursorLine cterm=underline
autocmd FileType netrw au BufLeave <buffer> hi CursorLine cterm=none
