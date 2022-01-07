set splitright
function! OpenTerminal()
  execute "normal \<C-.l>"
  execute "normal \<C-.l>"
  execute "normal \<C-.l>"
  execute "normal \<C-.l>"
  
  let bufNum = bufnr("%")
  let butType = getbufvar(bufNum, "&buftype", "not found")
  
  if buftype == "terminal"
    execute "q"
  else
    execute "vsp term: //zsh"
    
    execute "set nonu"
    execute "set nornu"
    
    silent au BuffLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!
    
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-h> <C-\\><C-\\> <C-\\><C-n>"
    
    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
