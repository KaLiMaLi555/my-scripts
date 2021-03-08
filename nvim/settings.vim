""""""""""""""""""""""""""""""""
"  Vim Config Settings         "
""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on                  " load filetype-specific indent files

""""""""""""""""""""""""
" Commenting           "
""""""""""""""""""""""""
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType python setlocal commentstring=#\ %s
