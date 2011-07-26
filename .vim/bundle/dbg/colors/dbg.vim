" Vim color file
" Maintainer: dbg
" Last Change: 2011 Jan 24

set background=dark
hi clear
" colorscheme default

let colors_name = "dbg"

highlight Normal guifg=white guibg=black

" シンタックス
highlight Comment ctermfg=69
highlight Constant ctermfg=210
highlight Statement ctermfg=3
highlight Special ctermfg=213
highlight PreProc ctermfg=213
highlight Underlined ctermfg=213
highlight Title ctermfg=213

" 検索
highlight Search ctermfg=0

" ビジュアル
highlight Visual ctermbg=240

" 行番号
highlight LineNr ctermfg=184

" ポップアップメニュー
highlight Pmenu ctermfg=0 ctermbg=7 guifg=black guibg=white
highlight PmenuSel cterm=bold ctermfg=7 ctermbg=4 guifg=white guibg=#80a0ff

" listchars:eol
highlight NonText cterm=none ctermfg=21 gui=none

highlight CursorLine cterm=none ctermbg=235

if has('multi_byte_ime')
 highlight CursorIM guibg=#f5b8ab
endif


" edit by 84q

" タブ
hi SpecialKey gui=bold guifg=skyblue2 guibg=gray25

" TODO関連
hi clear Todo
hi link Todo Comment

" 全角スペース
hi ZenkakuSpace gui=undercurl guifg=darkcyan guibg=gray15

" 対応する括弧
hi MatchParen guibg=grey30

" タブ関連
hi TabLine gui=bold,underline guifg=white guibg=black
hi TabLineSel gui=bold
hi TabLineFill gui=reverse

" カーソル関連
hi CursorColumn gui=reverse guibg=grey40
hi CursorLine gui=underline
hi clear Cursor
hi Cursor gui=reverse
hi lCursor guifg=bg guibg=fg

" 補完等のポップアップ
hi Pmenu guibg=darkcyan
hi PmenuSel guibg=black
hi PmenuSbar guibg=gray
hi PmenuThumb gui=reverse
