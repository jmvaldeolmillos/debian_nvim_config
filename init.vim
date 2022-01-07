let g:nvim_data_root = stdpath('data')
let g:nvim_config_root = stdpath('config')
let g:config_file_list = ['/nvim-plugins/plugins.vim',
    \ '/general/settings.vim',
    \ '/keymapping/keys.vim',
    \ '/plug-config/airline.vim',
    \ '/plug-config/coc.vim',
    \ '/plug-config/easy_align.vim',
    \ '/plug-config/easymotion.vim',
    \ '/plug-config/fuzzy.vim',
    \ '/plug-config/indentline.vim',
    \ '/plug-config/git.vim',
    \ '/plug-config/nerdcommenter.vim',
    \ '/plug-config/nerdtree.vim',
    \ '/plug-config/one_dark.vim',
    \ '/plug-config/rename.vim',
    \ '/plug-config/syntastic.vim',
    \ '/plug-config/tagbar.vim',
    \ '/plug-config/terminal.vim',
    \ '/plug-config/tmux.vim',
    \ '/plug-config/ultisnips.vim',
    \ '/plug-config/vim_notes.vim',
    \ '/plug-config/vim_tests.vim',
    \ '/plug-config/multiple_cursors.vim',
    \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . f
endfor
