" .gvimrc

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=90
" ウインドウの高さ
set lines=42
" コマンドラインの高さ(GUI使用時)
set cmdheight=1

"---------------------------------------------------------------------------
" 日本語入力に関する設定:
"
if has('multi_byte_ime') || has('xim')
  " 挿入モード・検索モードでのデフォルトのIME状態設定
  set iminsert=0 imsearch=0
  " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
  "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"---------------------------------------------------------------------------
" マウスに関する設定:
"
" どのモードでもマウスを使えるようにする
set mouse=a
" マウスの移動でフォーカスを自動的に切替えない (mousefocus:切替る)
set nomousefocus
" 入力時にマウスポインタを隠す (nomousehide:隠さない)
set mousehide
" ビジュアル選択(D&D他)を自動的にクリップボードへ (:help guioptions_a)
"set guioptions+=a

"---------------------------------------------------------------------------
" タブウィンドウの設定
"
if v:version >= 700
	function! MyGuiTabLable()
		let buflist = tabpagebuflist(v:lnum)
		let winnum = tabpagewinnr(v:lnum)
		return (1==gettabwinvar(v:lnum,winnum,'&modified')?'[+]':'') . ' ' . matchstr(bufname(buflist[winnum-1]),'[^/]*$')
	endfunction
	set guitablabel=%{MyGuiTabLable()}
endif

"---------------------------------------------------------------------------
" その他、見栄えに関する設定:
"
" 検索文字列をハイライト
set hlsearch
" カーソルを点滅させない
set guicursor+=a:blinkwait200-blinkoff500-blinkon500

" メニューを表示しない
set guioptions+=m
set guioptions-=T

"---------------------------------------------------------------------------
" 印刷に関する設定:
"
" 注釈:
" 印刷はGUIでなくてもできるのでvimrcで設定したほうが良いかもしれない。この辺
" りはWindowsではかなり曖昧。一般的に印刷には明朝、と言われることがあるらし
" いのでデフォルトフォントは明朝にしておく。ゴシックを使いたい場合はコメント
" アウトしてあるprintfontを参考に。
"
" 参考:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" 印刷用フォント
if has('printer')
  if has('win32')
    set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
inoremap <silent> <C-[> <ESC>:set iminsert=0<CR>
nnoremap <silent> / :set imsearch=0<CR>/
nnoremap <silent> ? :set imsearch=0<CR>?

"---------------------------------------------------------------------------
let $GTK_IM_MODULE='xim'
