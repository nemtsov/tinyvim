if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

" PRETTINESS
set background=light
colorscheme coderschool
set guifont=Inconsolata-g:h14
set guioptions-=L  "remove left-hand scroll bar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=T  "remove toolbar

" Enter SELECT mode only when using shifted special keys
set selectmode=key

" No min-height on windows
set wmh=0

" Map fullscreen to Command+Enter
map <D-Enter> :set invfu<CR>

" Disable visual bell
set vb

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif
