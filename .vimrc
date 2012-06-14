au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
set tabstop=3
set smarttab
set shiftwidth=3
set autoindent
set expandtab
set backspace=start,indent
set number
set ruler
set hlsearch

syntax on
filetype on
filetype plugin indent on
map <F2> :execute GoogleLink()<CR>
map <F3> :execute 'NERDTreeToggle ' . getcwd()<CR>

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
let Tlist_Use_Right_Window = 1
map T :TlistToggle<CR>

map <Leader>se :setlocal spell spelllang=en_us<CR>
map <Leader>sn :setlocal nospell<CR> 

set guifont=Monaco:h18

set undofile
set undodir=/tmp/undos

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

