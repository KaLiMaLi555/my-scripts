""""""""""""""""""""""""
" Colors               "
""""""""""""""""""""""""
colorscheme gruvbox
set background=dark
set t_Co=255
set laststatus=2

""""""""""""""""""""""""
" Tabs and Spaces      "
""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab

""""""""""""""""""""""""
" UI Config            "
""""""""""""""""""""""""
set number relativenumber                  " show relative line numbers
set cursorline                             " highlight current line
set wildmenu                               " visual autocomplete for command menu
set showmatch                              " highlight matching [{()}]
set showcmd                                " show command in bottom bar
set statusline^=%{coc#status()}            " Status Bar for coc
set scrolloff=10

""""""""""""""""""""""""
" Searching            "
""""""""""""""""""""""""
set incsearch                              " search as characters are entered
set hlsearch                               " highlight matches

""""""""""""""""""""""""
" Searching            "
""""""""""""""""""""""""
set undodir="~/.config/nvim/.undodir"
set undofile

set nofixendofline
