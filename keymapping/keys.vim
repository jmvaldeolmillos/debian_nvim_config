"" Grabar como sudo
cmap w!! w !sudo tee "%"

"" :map and :noremap are recursive and non-recursive
let mapleader="," 

" quit file
nnoremap <leader>q <esc>:q<cr>

" go to normal mode. amazing!!
inoremap kj <esc>l

" move between windows
noremap <TAB><TAB> <C-w><C-w>

" Use alt + hjkl to resize windows
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>

" key mapping for exit file
nnoremap <F1> <esc>:q<CR>
inoremap <F1> <esc>:q<CR>
vnoremap <F1> <esc>:q<CR>

" key mapping for save file
nnoremap <F2> <esc>:w<CR>
inoremap <F2> <esc>:w<CR>
vnoremap <F2> <esc>:w<CR>
nnoremap <leader>s <esc>:w<CR>
inoremap<leader>s <esc>:w<CR>
vnoremap <leader>s <esc>:w<CR>

" tab navigation mappings
nnoremap tn :tabn<CR>
nnoremap tp :tabp<CR>
nnoremap tm :tabm<CR>
nnoremap tt :$tabnew<CR>

" move text lines and blocks
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
noremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"" buffers
map <Leader>ob :Buffers<cr>
nnoremap <leader><tab> :bn<cr> " Move between buffers
nnoremap <leader><S-tab> :bp<cr> " Move between buffers

" Closing and hiding current buffer
nnoremap <leader>w :bd<cr>

" reselect text after indentation
vnoremap < <gv
vnoremap > >gv
nnoremap > <c-w>>
nnoremap < <c-w><

" override next and previous search to show in the middle of the screen (zz)
" and also open just enough folds (zv) to make the line in which the cursor 
" is located not folded.
nnoremap n nzzzv
nnoremap N Nzzzv

" clear search results
nnoremap <silent><space> :nohl<CR>

" select current line without identation
nnoremap vv ^vg_

" duplicate line
nnoremap dl :t.<CR>

" remap up and down keys to navigate on warp lines
noremap j gj
noremap k gk

" repeat t/T/f/F search easily
nnoremap ñ ;

" clear empty spaces at the end of lines on save of python files
autocmd BufWritePre *.py :%s/\s\+$//e

"" ejecutar archivo pero no se si funciona con python
nnoremap <Leader>x :!python3 %<cr>
