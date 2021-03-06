set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "organism"

hi Normal guifg=#A5CEDC guibg=#1B212B  gui=NONE
hi Cursor guifg=#000000 guibg=#ffffff gui=NONE
hi Visual guifg=#000000 guibg=#8BC5FF gui=NONE
hi LineNr guifg=#6B8787 guibg=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#121519 gui=NONE
hi CursorLineNr guifg=#9EB6CD guibg=NONE gui=NONE
hi ColorColumn guifg=NONE guibg=#121519 gui=NONE
hi CursorColumn guifg=NONE guibg=#121519 gui=NONE
hi Search guifg=#000000 guibg=#FFE200 gui=NONE
hi IncSearch guifg=#000000 guibg=#FFE200 gui=NONE
hi MatchParen guifg=#C792E4 guibg=NONE gui=underline
hi Folded guifg=#61707F guibg=#121519 gui=NONE
hi VertSplit guifg=#121519 guibg=#121519 gui=NONE
hi StatusLine guifg=#EEFFF9 guibg=#121519 gui=NONE
hi StatusLineNC guifg=#EEFFF8 guibg=#121519 gui=NONE
hi EndOfBuffer guifg=#61707F guibg=#1B212B gui=NONE
hi TabLineFill  guifg=NONE guibg=#3A434B gui=none
hi TabLine      guifg=#EEFFF9 guibg=#3A434B gui=none
hi link TabLineSel Normal
hi Title guifg=#EEFFF9
hi Pmenu guifg=#8BAADE guibg=#26395A gui=none
hi PmenuSel guifg=#FFFFFF guibg=#152033 gui=none

" constant group
hi Constant guifg=NONE guibg=NONE gui=NONE
" hi String guifg=#22D689 guibg=NONE gui=NONE "old green
hi String guifg=#75B56C guibg=NONE gui=NONE
hi Character guifg=#77B46F guibg=NONE gui=NONE
hi Number guifg=#EB8649 guibg=NONE gui=NONE
hi Boolean guifg=#FF5C43 guibg=NONE gui=NONE

" identifier group
hi Identifier guifg=#4E9DEC guibg=NONE gui=NONE
hi Function guifg=#4E9DEC guibg=NONE gui=NONE

" preproc group
hi PreProc guifg=#C792E4 guibg=NONE gui=NONE

" type group
hi Type guifg=#5fffff guibg=NONE gui=NONE

" statement group
hi Statement guifg=#FF5C43 guibg=NONE gui=NONE
hi Conditional guifg=#C792E4 guibg=NONE gui=NONE
hi Repeat guifg=#C792E4 guibg=NONE gui=NONE
hi Label guifg=#C792E4 guibg=NONE gui=NONE
hi link Operator Type

" special group
hi Special guifg=NONE guibg=NONE gui=NONE
hi SpecialComment guifg=#FFE57F guibg=NONE gui=NONE

" others
hi Todo guifg=#FF74ED guibg=NONE gui=NONE
hi Comment guifg=#6B8787 guibg=NONE gui=NONE
hi link Exception Boolean

" git
hi link diffAdded String
hi link diffRemoved Boolean
hi link diffLine SpecialComment
hi link gitcommitDiff Comment
hi link diffSubname Comment

" css
" hi link scssDefinition PreProc
" hi link scssProperty PreProc
" hi link scssSelectorName Function
hi link cssProp SpecialComment

" haml
hi link hamlClass Boolean

" ruby
hi link rubyFunction Function
hi link rubyClass PreProc
hi link rubyModule PreProc
hi link rubyDefine PreProc
hi link rubyConstant SpecialComment
hi link rubyInclude Function
hi rubySymbol guifg=#9597FF guibg=NONE gui=NONE
hi link rubyCurlyBlockDelimiter Normal
hi link rubyMethodBlock Normal
hi link rubyOperator Operator
hi link rubyControl PreProc
hi link rubyLocalVariableOrMethod Function
hi link rubyPseudoVariable Boolean
hi link rubyKeywordAsMethod Function
hi link rubyRegexp Operator
hi link rubyRegexpDelimiter Operator
hi link rubyClassVariable SpecialComment
hi link rubyGlobalVariable SpecialComment
hi link rubyException Exception
hi link rubyStringDelimiter String
hi link rubyConditionalExpression Normal
hi link rubyInterpolationDelimiter Operator
hi link rubyInterpolation Operator
hi link rubyInstanceVariable Statement
hi link rubyBlockParameterList SpecialComment
hi link rubyBlockParameter Statement

" hi rubyEscape guifg=#bd93f9 guibg=NONE gui=NONE

" rspec
hi link rspecGroupMethods Operator
hi link rspecMatchers Operator
hi link rspecBeforeAndAfter Operator

" vimscript
hi vimGroupName guifg=#9DFFB7 guibg=NONE
hi link vimHiGroup PreProc
hi link vimGroup String
hi link vimOption String
hi vimHighlight guifg=#9597FF guibg=NONE
hi vimHiCterm guifg=NONE guibg=NONE
hi vimHiCtermFgBg guifg=NONE guibg=NONE
hi vimHiGuiFgBg guifg=NONE guibg=NONE
hi vimHiGuiRgb guifg=#8CFEFF guibg=NONE
hi vimHiGui guifg=NONE guibg=NONE
hi vimFgBgAttrib guifg=NONE guibg=NONE
hi vimHiAttrib guifg=NONE guibg=NONE
hi link vimFuncName Function
hi vimCommand guifg=#9597FF guibg=NONE gui=NONE

" netrw
hi link netrWDir Function
hi link netrWClassify Operator

" markdown
hi htmlH1 guifg=#ffffff
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlH5 htmlH1
hi link htmlH6 htmlH1
hi mkdNonListItemBlock guifg=#8397AA
hi link mkdListItem SpecialComment
hi mkdInlineURL guifg=#9597FF guibg=NONE gui=NONE

" ultisnips
hi link snipLeadingSpaces Normal
