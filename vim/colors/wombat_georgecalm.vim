" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	guifg=#000000 guibg=#c7df89
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#929292 gui=none
hi Normal 		guifg=#d6d5d1 guibg=#242424 gui=none
hi NonText 		guifg=#808080 guibg=#303030 gui=none
hi LineNr 		guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment 		guifg=#99968b gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 	guifg=#e5786d gui=none
hi String 		guifg=#9bbf7d gui=italic
hi Identifier 	guifg=#c7df89 gui=none
hi Function 	guifg=#c7df89 gui=none
hi Type 		guifg=#c7df89 gui=none
hi Statement 	guifg=#94c5e8 gui=none
hi Keyword		guifg=#94c5e8 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Number		guifg=#d77a71 gui=none
hi Special		guifg=#e7f6da gui=none

hi Directory gui=NONE guifg=#857b6f guibg=NONE
hi Search guifg=NONE guibg=#656565 gui=NONE

