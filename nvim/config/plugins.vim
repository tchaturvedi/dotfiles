set background=dark

syntax enable
set number
colorscheme wal

let g:airline_theme='wal'

" NERDTree
"

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1
