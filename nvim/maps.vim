" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Undotree toggle
nnoremap <leader>u :UndotreeToggle<CR>

" Mapping for saving and sourcing vim-init
nnoremap <leader>s :w <bar> :source %<CR>

" Navigating across vim buffers
nnoremap <C-K> :bnext<CR>
nnoremap <C-J> :bprevious<CR>

" Binding for trimming trailing whitespace
nnoremap <leader>ws :FixWhitespace<CR>

" Bindings for FZF
nnoremap <C-T> :FZF<CR>
nnoremap <C-B> :Buffers<CR>
