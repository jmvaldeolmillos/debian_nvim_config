map <F3> :NERDTreeToggle<CR> " toggle nerdtree display
nmap <F4> :NERDTreeFind<CR> " open nerdtree with the current file selected
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '__pycache__'] " dont show this files
let NERDTreeHighlightCursorline = 1 " show cursor line

map <Leader>nf :NERDTreeFocus<CR>
map <Leader>nt :NERDTree<CR>
map <Leader>nj :call CocActionAsync('jumpDefinition')<CR>
map <Leader>np :Files<CR>
map <Leader>nag :Ag<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Autorefresh on tree focus
function! NERDTreeRefresh()
    if &filetype == "nerdtree"
        silent exe substitute(mapcheck("R"), "<CR>", "", "")
    endif
endfunction
autocmd BufEnter * call NERDTreeRefresh()
nmap <F8> :TagbarToggle<CR>
