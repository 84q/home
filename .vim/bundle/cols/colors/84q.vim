" colorscheme for gVim

set background=dark

hi clear

let g:colors_name = "84q"

hi Normal	guifg=white	guibg=black
" タブ
hi SpecialKey	gui=bold	guifg=skyblue2	guibg=gray25	
" EOF以降の~
hi NonText		guifg=red		
hi Directory		guifg=lightcyan		
" エラー
hi ErrorMsg	gui=bold	guifg=white	guibg=red	
" 検索中のヒット文字
hi IncSearch	gui=reverse			
" 検索ヒット文字
hi Search		guifg=black	guibg=yellow	
" --継続--
hi MoreMsg	gui=bold	guifg=green		
" --挿入--
hi ModeMsg	gui=bold			
" 行番号
hi LineNr	gui=bold	guifg=yellow		
" 置換の確認
hi Question	gui=bold	guifg=green		
" ステータスライン
hi StatusLine	gui=reverse			
" アクティブでないステータスライン
hi StatusLineNC	gui=reverse			
" 縦のスプリット境界
hi VertSplit	gui=reverse			
" --- オプション ---
hi Title	gui=bold	guifg=lightmagenta		
" Visualモードでの選択範囲
"hi clear Visual
hi Visual	gui=reverse			
"hi Visual ctermbg=240
" アクティブではないVisualモードでの選択範囲
hi VisualNOS	gui=underline			
" 警告
hi WarningMsg		guifg=lightred	guibg=darkgreen	
" wild menu
hi WildMenu		guifg=black	guibg=brown	
" 折り畳み関連
hi Folded	gui=bold	guifg=cyan	guibg=grey50	
hi FoldColumn	gui=bold	guifg=cyan	guibg=black	
" diff 関連
hi DiffAdd			guibg=darkblue	
hi DiffChange			guibg=darkmagenta	
hi DiffDelete	gui=bold	guifg=lightblue	guibg=darkcyan	
hi DiffText	gui=bold		guibg=darkred	
" sign
hi SignColumn		guifg=lightcyan	guibg=black	
" スペルチェック
hi SpellBad			guibg=red	
hi SpellCap			guibg=blue	
hi SpellRare			guibg=magenta	
hi SpellLocal			guibg=cyan	
" 補完等のポップアップ
hi Pmenu			guibg=darkcyan	
hi PmenuSel			guibg=black	
hi PmenuSbar			guibg=gray	
hi PmenuThumb	gui=reverse			
" タブ関連
hi TabLine	gui=underline	guifg=white	guibg=black	
"hi TabLineSel				
hi TabLineFill	gui=reverse			
" カーソル関連
hi CursorColumn	gui=reverse		guibg=grey40	
hi CursorLine	gui=underline			
hi clear Cursor
hi Cursor	gui=reverse			
hi lCursor		guifg=bg	guibg=fg	
" 対応する括弧
hi MatchParen			guibg=grey30	
" 通常の文字
hi Normal		guifg=white	guibg=black	
" プログラミング言語関連
hi Comment	gui=italic	guifg=SkyBlue
hi Constant		guifg=darksalmon
hi Special		guifg=red
hi Identifier		guifg=#cae682
hi Statement		guifg=yellow
hi PreProc		guifg=deepskyblue
hi Type		guifg=green
hi Underlined	gui=underline	guifg=lightblue
hi Ignore		guifg=bg
hi Error		guifg=white	guibg=red
" Todo
hi clear Todo
hi link Todo Comment
" 全角スペース
hi ZenkakuSpace	gui=undercurl	guifg=darkcyan	guibg=gray15	

" vim: tabstop=20 softtabstop=20

