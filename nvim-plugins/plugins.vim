" Vim-plug initialization

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')

if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

" ------------------------------------------------------------

call plug#begin("~/.vim/plugged")

" Override configs by directory.
" Create a .vim.custom file in the directory you want to customize.
Plug 'arielrossanigo/dir-configs-override.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " File browser
Plug 'wincent/terminus' " Change cursor in Insert and Replace
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Airline
Plug 'joshdick/onedark.vim' " Color scheme One Dark
Plug 'scrooloose/nerdcommenter' " Code commenter
Plug 'easymotion/vim-easymotion' " Better motion
Plug 'majutsushi/tagbar' " Class/module browser
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'} " Code and files fuzzy finder
Plug 'junegunn/fzf.vim'" Code and files fuzzy finder
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tyewang/vimux-jest-test'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat' "
Plug 'vim-scripts/AutoComplPop'" Autocompletion
Plug 'scrooloose/syntastic' " Syntactic analysis
Plug 'janko-m/vim-test', { 'for': ['python'] } " Run tests
Plug 'tpope/vim-dispatch' " Run tests asynchronous 
Plug 'xolox/vim-notes' " Note
Plug 'xolox/vim-misc' " needed for vim-notes
Plug 'SirVer/ultisnips' " Code snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc need nodejs
Plug 'jiangmiao/auto-pairs' " close pairs
Plug 'junegunn/vim-easy-align' " Others
Plug 'junegunn/rainbow_parentheses.vim' " parentesis con colores
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'yggdroot/indentline' " Ide
Plug 'benmills/vimux' "" tmux
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

au VimResized *:wincmd = " resize splits when windows are reduced

augroup cline
  " delete any old autocommand
  au! 
  " remove cursor line on windows leave and when on insert mode
  au WinLeave,InsertEnter * set nocursorline
  " show cursor line on window enter or when exit from insert mode
  au WinEnter,InsertLeave * set cursorline
augroup END
