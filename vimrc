" PATHOGEN PLUGINS
call pathogen#infect()

" GLOBAL
let mapleader = ","
filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set nofoldenable
set nu

" ANTI-TEMPTATION
ino <Up> <NOP>
ino <Right> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>

" ANTI-ANNOYANCE
map <F1> <Esc>
imap <F1> <Esc>

" FUNCTIONAL ALIASES
nnoremap <leader><space> :noh<cr>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" PLUGINS
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3

" DEFINE FILE-TYPES
au BufNewFile,BufRead *.mu,*.mustache,*.handlebars,*.hbs set filetype=mustache
