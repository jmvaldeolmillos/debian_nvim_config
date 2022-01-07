syntax enable
set guicursor=                             " Disable blinking for the n-v-c modes
set termguicolors
set guioptions-=T                          " No Tool bar
set cursorline                             " Highlight the current line
set hidden                                 " When on a buffer becomes hidden when it is abandoned
set path+=**
set nowrap
set encoding=UTF-8
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set numberwidth=1
set ruler
set title
set list " show tabs, eol and spaces
set listchars=tab:▸\ ,eol:¬,trail:· " chars to use to show the tabs, eol and spaces
set nocompatible " no vi-compatible
set wildmenu
set scrolloff=5 " when scrolling, keep cursor 5 lines away from screen border
set updatetime=300 " You will have a bad experience with diagnostic messages with the default 4000.
set shortmess+=c " Don't give |ins-completion-menu| messages.
set signcolumn=yes " Always show signcolumns
set cmdheight=2 " Give more space for displaying messages.
set expandtab
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey
set noswapfile
set nobackup
set undofile
execute 'set undodir=' . g:nvim_data_root . '/undodir'

" Python virtual environment detection in linux
let g:loaded_python_provider = 0

" Ruta donde se creó el ambiente de Python con pipenv.
" let g:python3_host_prog = '/home/jose/.local/share/virtualenvs/{nvim-999999}/bin/python'

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" swap, backup and undo files
set directory=~/.vim/dirs/tmp     " folder for swap files
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " folder for backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos

"" Searchig
set hlsearch
set incsearch " incremental search
set ignorecase " search is case insensitive but you can add \C to make it sensitive
set smartcase " will automatically switch to a case-sensitive search if you use any capital letters

" other sets
set ls=2 " always show status bar

filetype plugin indent on       " ... and enable filetype detection
set autoread                    " Automatically read changed files
set autowrite                   " Automatically save before :next, :make etc.

" how to split windows
set splitbelow
set splitright

" ???
set complete=.,w,b,u,t
set completeopt=longest,menuone " Use the popup menu also when there is only one match.
set completeopt-=preview   " Hide the documentation preview window
set omnifunc=syntaxcomplete#Complete

" Para nVim
if !has('nvim')
    set ttymouse=xterm2
endif
  
" if you exit vim and later start, vim remembers information like, command line history, search history, marks, etc ...
if !has('nvim')
    set viminfo+=n~/.vim/dirs/viminfo "para trabajar con vim
else
    set viminfo+=n~/.nvim/dirs/viminfo 
endif

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif

if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif

if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif
