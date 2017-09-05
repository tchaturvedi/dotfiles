call plug#begin('~/.dotfiles/nvim/plugged')

" Theme
Plug 'raphamorim/lucario'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal' 

" Utilities
Plug 'vim-scripts/ScrollColors'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Tools
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Language specific packages
Plug 'fatih/vim-go', { 'for': ['go'], 'do': ':GoInstallBinaries' }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
autocmd! User goyo.vim echom 'Goyo is now loaded!'
Plug 'zchee/deoplete-jedi'

call plug#end()
