" .vimrc
" ------------------------------------------

" Vi 互換モードを使わない
set nocompatible

" for windows
set rtp+=~/.vim/
" for vundle
set rtp+=~/.vim/vundle/
call vundle#rc()

" vundle plugins
Bundle 'The-NERD-Commenter'
Bundle 'unite.vim'
Bundle 'unite-colorscheme'
Bundle 'ZenCoding.vim'
Bundle 'neocomplcache'
Bundle 'surround.vim'
Bundle 'grep.vim'
Bundle 'format.vim'
Bundle 'scala.vim'
Bundle 'Align'
Bundle 'css.vim'
Bundle 'MultipleSearch2.vim'
Bundle 'wikipedia.vim'

" 行頭の空白,改行,挿入モード開始文字より手前の文字をBSで削除可能
set bs=indent,eol,start

" マークするファイル数(")
" レジスタの最大行数(")
" コマンドライン履歴最大数(:)
set viminfo+='50,\"1000,:100

" コマンドライン履歴
set history=5000

" VisualBellを使わない
set novisualbell

" 行番号を表示
set number

" マウス
set mouse=

" タブや改行を表示
set list
"if &encoding ==# 'utf-8'
"	set listchars=eol:竍｣,tab:\ \ ,extends:ﾂｻ,precedes:ﾂｫ
"else
"	set listchars=eol:$,tab:\ \ ,extends:>,precedes:<
"endif

" タブや改行の表示方法
set listchars=tab:>\ ,trail:\ ,nbsp:%

" 長い行を折り返して表示
set wrap

" クリップボードをOSと共有
set clipboard+=unnamed

" ページアップダウンでカーソル列を保つ
set nostartofline

" カーソルを行頭、行末で止まらせない
set whichwrap=b,s,h,l,<,>,[,]

" ファイルを開いたときに自動でカレントディレクトリを変更
command! -nargs=0 CdCurrnet cd %:p:h
command! -nargs=0 LcdCurrnet lcd %:p:h
"autocmd BufEnter * execute ":lcd "  . fnameescape(expand("%:p:h"))
autocmd BufEnter * execute ":LcdCurrnet"

" ファイルブラウザにどのディレクトリを使うか
set browsedir=current

" パスのセパレータをslashに
set shellslash

" 矩形選択時にフリーカーソルに
set virtualedit=block

" 常にステータス行を表示
set laststatus=2

" コマンドをステータス行に表示
set showcmd

" 現在のモードをステータス行に表示
set showmode

" タイトルを表示
set title

" ステータスラインに表示する文字列
"{{{
" iso-2022-jp -> JIS
" ucs-21e -> unicode
" ucs-2 -> unicode(Bid Endian)
" cp932 -> SJIS
set statusline=%<%F%r%h%w%=[FILE\ %{&fenc}/%{&ff}/%Y]\ [(%04l,%04v)\ MAX%L(%3p%%)]\ [CODE=\%4.4B]
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"}}}

" 検索時に大文字小文字を無視
set ignorecase

" 大文字が含まれている場合は大文字小文字を区別
set smartcase

" インクリメントサーチをおこなう
set incsearch

" 結果をハイライト
set hlsearch

" 末尾まで検索した後先頭に戻らない
set nowrapscan

" バックグラウンド
set background=dark

" モードラインを認識する
set modeline
set modelines=5

" タブの画面上での幅
set tabstop=4

" 最終行をできる限り表示
set display+=lastline

" タブをスペースに展開しない
set noexpandtab

" 自動的にインデントする
set autoindent

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" 括弧入力時に対応する括弧を表示
set showmatch

" 括弧入力時に移動先で待機する時間(0.1秒単位)
set matchtime=3

" コマンドラインで補完候補を表示
" set wildmenu

" テキスト挿入中の自動折り返しを日本語に対応させる
"autocmd FileType * set formatoptions+=mM
set formatoptions+=mM

" クリップボード機能
set clipboard+=unnamed

" スクロール時に余裕を持たせる
set scrolloff=5

" タブが対応する空白の数(0の場合tabstopと同様とする)
set softtabstop=0

" 自動インデント時の空白の数
set shiftwidth=4

" 入力されるテキストの最大幅(0で設定を無効)
set textwidth=0

" C言語スタイルのインデント
set nocindent

" cindentのオプション
set cinoptions=:0,l1,g0,t0,c0,(0,u0,U0,j1,)30,*30

" 行頭の余白でタブを押すとshiftwidthの数だけインデントする
set smarttab

" 変更中のファイルでも保存しないで他のファイルを表示できるようにする
"set hidden

" iskeywordに - を含める
"set iskeyword+=-

" ファイルが外部で変更された場合に、自動で読み込む
set autoread

" コメント開始文字列を自動挿入しない
set formatoptions-=r " 挿入モードで<Enter>を打ち込んだ後
set formatoptions-=o " ノーマルモードで'o', 'O'を打ち込んだ後

" backup
set nobackup
"set backupdir=~/.vim/backup/

" swap
set noswapfile
"set directory=~/.vim/swap/

" ファイル形式別プラグインを有効化
filetype plugin on

" ファイル形式別インデントを有効化
filetype indent on

" :grepのプログラム指定
set grepprg=grep\ -nH\ $*

" キーマッピング:
" 複数行表示時の上下移動
"{{{
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <c-o>gj
inoremap <Up> <c-o>gk
"}}}

" タブを消さない
"{{{
nnoremap <S-CR> o<ESC><LEFT><RIGHT>
nnoremap o o<LEFT><RIGHT>
nnoremap O O<LEFT><RIGHT>
inoremap <C-j> <cr><LEFT><RIGHT>
inoremap <CR> <CR><LEFT><RIGHT>
inoremap <C-CR> <ESC>o<LEFT><RIGHT>
inoremap <S-CR> <ESC>o<LEFT><RIGHT>
"}}}

" NormalMode で Ctrl-h を BackSpace に
nnoremap <C-h> X

" コマンドラインでのキーバインドを Emacs スタイルにする
"{{{
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
"}}}

" タブウィンドウの設定
"{{{
if v:version >= 700
	set tabpagemax=15
	set showtabline=2
	" タブのキーマップ
	nnoremap <C-p> :tabprevious<cr>
	nnoremap <C-n> :tabnext<cr>
	nnoremap <C-t> :tabnew<SPACE>
endif
"}}}

" 文字コードの自動認識
"{{{
if &encoding !=# 'utf-8'
	set encoding=japan
	set fileencoding=japan
endif
if has('iconv')
	let s:enc_euc = 'euc-jp'
	let s:enc_jis = 'iso-2022-jp'
	" iconvがeucJP-msに対応しているかをチェック
	if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
		let s:enc_euc = 'eucjp-ms'
		let s:enc_jis = 'iso-2022-jp-3'
		" iconvがJISX0213に対応しているかをチェック
	elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
		let s:enc_euc = 'euc-jisx0213'
		let s:enc_jis = 'iso-2022-jp-3'
	endif
	" fileencodingsを構築
	if &encoding ==# 'utf-8'
		let s:fileencodings_default = &fileencodings
		let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
		let &fileencodings = &fileencodings .','. s:fileencodings_default
		unlet s:fileencodings_default
	else
		let &fileencodings = &fileencodings .','. s:enc_jis
		set fileencodings+=utf-8,ucs-2le,ucs-2
		if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
			set fileencodings+=cp932
			set fileencodings-=euc-jp
			set fileencodings-=euc-jisx0213
			set fileencodings-=eucjp-ms
			let &encoding = s:enc_euc
			let &fileencoding = s:enc_euc
		else
			let &fileencodings = &fileencodings .','. s:enc_euc
		endif
	endif
	" 定数を処分
	unlet s:enc_euc
	unlet s:enc_jis
endif
" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
	function! AU_ReCheck_FENC()
		if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
			let &fileencoding=&encoding
		endif
	endfunction
	autocmd BufReadPost * call AU_ReCheck_FENC()
endif
"}}}

" 改行コードの自動認識
set fileformats=unix,dos,mac

" omni補完の設定
"{{{
if has('autocmd') && exists('+omnifunc')
	autocmd Filetype *
\	if &omnifunc == '' |
\		setlocal omnifunc=syntaxcomplete#Complete |
\	endif
endif
"}}}

" シンタックスハイライトする最大行数
set synmaxcol=1000

" 特殊文字があってもカーソル位置がずれないようにする
"{{{
if exists('&ambiwidth')
"	set ambiwidth=single
	set ambiwidth=double
endif
"}}}

" CUIでのタブ設定
"{{{
if v:version >= 700 && !has('gui_running')
	function! MyTabLine()
		let s = ''
		for i in range(tabpagenr('$'))
			if i + 1 == tabpagenr()
				let s .= '%#TabLineSel#'
			else
				let s .= '%#TabLine#'
			endif
			
			let buflist = tabpagebuflist(i+1)
			let winnr = tabpagewinnr(i+1)
			let bufname = matchstr(bufname(buflist[winnr-1]),'[^/]*$')
			"let winnum = tabpagewinnr(i+1,'$')
			let modified = gettabwinvar(i+1,winnr,'&modified')
			let s .= ' ' . (modified==1 ? '+' : '') . ' ' . bufname
		endfor
		let s .= '%#TabLineFill#%T'
		if tabpagenr('$') > 1
			let s .= '%=%#TabLine#%999X'
		endif
		return s
	endfunction
	
	set tabline=%!MyTabLine()
	highlight TabLine term=reverse cterm=reverse ctermfg=white ctermbg=black
	highlight TabLineSel term=bold cterm=bold,underline ctermfg=white ctermbg=black
	highlight TabLineFill term=reverse cterm=reverse ctermfg=white ctermbg=black
endif
"}}}

set smartindent
set wildmode=list:longest,full

" taglist
set tags=tags

" Escの2回押しでハイライト消去
nmap <silent> <ESC><ESC> :nohlsearch<CR><ESC>

" ハイライト系の定義

colorscheme 84q

" タブ文字などの表示変更
highlight SpecialKey ctermbg=Darkgray

" 全角に色を付ける(CUIのみ)
"highlight ZenkakuSpace cterm=underline ctermbg=Darkgray
"autocmd BufNewFile,BufRead * match ZenkakuSpace /　/

" シンタックスハイライト(色分け)を有効に
if has('syntax')
	syntax on
endif

"各種Plugin用の設定

" The-NERD-Commenter
"{{{
let NERDSpaceDelims=1
let NERDShutUp=1
map ,c<Space> <plug>NERDCommenterToggle
vmap <Leader>x ,c<Space>
nmap <Leader>x ,c<Space>

"}}}

" neocomplcache
"{{{
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_max_list=30
let g:neocomplcache_enable_smart_case=1
" let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_lock_buffer_name_pattern='fuf'
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
"}}}

" Align
"{{{
let g:Align_xstrlen=3
let g:DrChipTopLvlMenu="&Plugin."
"}}}

" format.vim
"{{{
set textwidth=0
let format_join_spaces=2
let format_allow_over_tw=1
"}}}

" Vim-Latex
"{{{
let g:tex_flavor='platex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FormatDependency_pdf='dvi,pdf'
let g:Tex_CompileRule_dvi='platex $*'
let g:Tex_CompileRule_pdf='dvipdfmx $*.dvi'
let g:Tex_ViewRule_pdf='evince'
"}}}

" local設定の読み込み
"{{{
if filereadable($HOME."/.vimrc.local")
	source ~/.vimrc.local
endif
"}}}


" vim: foldmethod=marker filetype=vim :
