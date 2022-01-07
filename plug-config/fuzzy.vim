nnoremap <leader>e :GFiles<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>m :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>W :Windows<CR>
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--preview', '--info=inline']}, <bang>0)
