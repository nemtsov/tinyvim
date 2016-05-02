if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

set nocompatible      " Use vim, no vi defaults

" VUNDLE
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'pangloss/vim-javascript'
Plugin 'nemtsov/JavaScript-Indent'
Plugin 'jnwhiteh/vim-golang'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'groenewege/vim-less'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'YankRing.vim'
call vundle#end()
filetype plugin indent on

" DEFAUL SHELL
set shell=/bin/sh

" GLOBAL
let mapleader = ","

set nofoldenable

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

" NAVIGATING TABS
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-t> :tabnew<CR>
map <D-w> :tabclose<CR>

" INDENTING BLOCKS (retains vis. selection)
vnoremap > >gv
vnoremap < <gv

" PLUGINS
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:ctrlp_map='<c-f>'

" ADD FILE-TYPE
au BufNewFile,BufRead *.mu set filetype=html syntax=mustache
"au BufNewFile,BufRead *.json set filetype=javascript

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

" STYLE
highlight clear SignColumn
colorscheme jellybeans

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
