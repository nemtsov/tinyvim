if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" DEFAUL SHELL
set shell=/bin/sh

" VUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" BUNDLES
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'pangloss/vim-javascript'
Bundle 'nemtsov/JavaScript-Indent'
Bundle 'jnwhiteh/vim-golang'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'groenewege/vim-less'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'YankRing.vim'

" GLOBAL
let mapleader = ","
filetype plugin indent on

set nofoldenable

set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
set encoding=utf-8    " Set default encoding to UTF-8
syntax enable         " Turn on syntax highlighting allowing local overrides

set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

" LIST CHARS
set list  " Show invisible characters: tabs, trailing spaces & long lines
set listchars=tab:>.,trail:.,extends:>,precedes:\<

" SEARCHING
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" BACKUP & TEMP FILES
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

" ANTI-TEMPTATION
ino <Up> <NOP>
ino <Right> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>

" ANTI-ANNOYANCE
map <S-k> <NOP>
map <F1> <Esc>
imap <F1> <Esc>

" FUNCTIONAL ALIASES
set pastetoggle=<F4>
nnoremap <leader><space> :noh<cr>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" To not loose changes when trying to edit a file you don't own
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))

" INDENTING BLOCKS (retains vis. selection)
vnoremap > >gv
vnoremap < <gv

" PLUGINS
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3

" ADD FILE-TYPE
au BufNewFile,BufRead *.mu set filetype=html syntax=mustache
au BufNewFile,BufRead *.json set filetype=javascript

" STYLE
highlight clear SignColumn
colorscheme jellybeans

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
