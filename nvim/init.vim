""""""""""""""""""""""""
" Vim-pluggins         "
""""""""""""""""""""""""
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug '907th/vim-auto-save'
call plug#end()

" Sets
source ~/.config/nvim/sets.vim

" Settings
source ~/.config/nvim/settings.vim

" Lets
source ~/.config/nvim/lets.vim

" Maps
source ~/.config/nvim/maps.vim

" Fzf
source ~/.config/nvim/fzf.vim
