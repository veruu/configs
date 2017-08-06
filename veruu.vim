let g:colors_name = "mytheme"

set termguicolors
set background=dark

set colorcolumn=80
hi ColorColumn		guibg=gray21

hi Normal		guifg=gray89
hi CursorColumn		guibg=gray27
hi LineNr		guifg=gray27
hi CursorLine		guibg=#232729	cterm=none
hi CursorLineNr		guifg=gray65
hi Folded		guifg=#232729	guibg=gray40
hi Search		guifg=#232729	guibg=#FFFF00
hi SpellBad		guifg=#93D300	guibg=#FF0000	cterm=bold,underline

hi DiffAdded		guifg=SpringGreen3
hi DiffFile		guifg=#BC49A9	cterm=bold
hi DiffSubname		guifg=#EE9EDE	cterm=bold
hi DiffIndexLine	guifg=gray50
hi DiffRemoved		guifg=red2
hi DiffLine		guifg=gray50
hi Title		guifg=firebrick2	cterm=bold

hi ErrorMsg		guifg=#93D300	guibg=#FF0000	cterm=bold,underline
hi Error		guifg=#93D300	guibg=#FF0000	cterm=bold,underline
"hi SpecialKey
"hi NonText
"hi Directory
"hi MoreMsg
"hi ModeMsg
"hi Question
"hi VisualNOS
"hi WildMenu
"hi Underlined
"hi Ignore
hi VertSplit		guifg=#232729	guibg=gray65
"hi FoldColumn
"hi IncSearch
"hi SpecialKey
"hi StatusLine
"hi StatusLineNC
hi MatchParen		guibg=#E00F80
"hi Visual
"hi WarningMsg

hi Comment		guifg=gray50
hi Constant		guifg=#F6E400	cterm=bold
hi String		guifg=#307730
hi Character		guifg=#50BB50
hi Number		guifg=palegreen
hi Boolean		guifg=#46BEA6
hi Identifier		guifg=#FF6B00
hi Function		guifg=#FFAAFF	cterm=bold
hi Statement		guifg=MediumOrchid1
hi Conditional		guifg=DodgerBlue1
hi Label		guifg=#6EB0DE
hi Repeat		guifg=#10CFFF
hi Operator		guifg=#F34CA2
hi Keyword		guifg=#F34CA2
hi Exception		guifg=coral1	cterm=bold
hi PreProc		guifg=#35D8C0	cterm=bold
hi Macro		guifg=#35D8C0	cterm=bold
hi PreCondit		guifg=#35D8C0	cterm=bold
hi Include		guifg=khaki2
hi Define		guifg=gold2
hi Type			guifg=orange2	cterm=bold
hi StorageClass		guifg=#FF6347
hi Structure		guifg=#DE3000	cterm=bold
hi Special		guifg=gold2
hi SpecialChar		guifg=gold2	cterm=bold
hi Todo			guifg=#232729	guibg=#FFFF00
