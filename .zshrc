# viキーバインド関連
# {{{
bindkey -v
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end
zle -A .backward-kill-word vi-backward-kill-word
zle -A .backward-delete-char vi-backward-delete-char

bindkey -a 'O' push-line
bindkey -a 'H' run-help
bindkey -a '^A' vi-beginning-of-line
bindkey -a '^E' vi-end-of-line
bindkey -v '^[[8^' vi-end-of-line
bindkey -v '^[[7^' vi-beginning-of-line
# }}}

# configuration of vi key-bind
[ -f ~/.zsh/zshrc.vi ] && source ~/.zsh/zshrc.vi

# OSの設定
OS=$(uname)


# alias
# {{{
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias du='du -h'
alias df='df -h'
alias grep='grep --color=auto'
alias rm='rm -i'
alias crontab='crontab -i'
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'
alias sudo='sudo '
alias sr='screen -xRR'

alias -g G='| grep'
alias -g L='| less'
alias -g V='| vim -R -'
alias cd-='cd -'
#alias man='w3mman'
# }}}

# OS依存の設定
case "${OSTYPE}" in
linux* | cygwin*)
	alias ls='ls -hF --color=auto'
	;;
darwin*)
	alias ls='ls -GF'
	;;
esac

# 補完設定
#compdef _man w3mman
#compdef _tex platex

# プロンプトの設定
autoload -U colors; colors
PROMPT=$'\n%{\e[1;32m%}%n@%m %{\e[1;33m%}%~\n%{\e[1;m%}%(!.#.$) '
SPROMPT="correct: %R -> %r ? "

# 履歴の保存場所
HISTFILE=~/.zsh_history

# メモリ内の履歴の数
HISTSIZE=10000

# 保存される履歴の数
SAVEHIST=100000

# EDITORの設定
export EDITOR=`which vi`

# 履歴ファイルに時刻を記録
#setopt extended_history

# 余分な余白を詰める
setopt hist_reduce_blanks

# シェルのプロセスごとに履歴を共有
setopt share_history

# 複数の zsh を同時に使う時など history ファイルに上書きせず追加
setopt append_history

# コマンドが入力されるとすぐに追加
setopt inc_append_history

# 候補がLISTMAX個以上の時に補完するか質問を行う．
# -1->質問しない, 0->画面にはいりきらないとき
LISTMAX=0

# なるべくコンパクトに補完候補を表示
setopt listpacked

# 補完の利用設定
autoload -U compinit; compinit

# sudo でも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# 補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pushd時に同一ディレクトリを除去
setopt pushd_ignore_dups

# 履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# 補完候補が複数ある時に、一覧表示
setopt auto_list

# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt list_types

# 先方予測
#autoload -U predict-on; predict-on

# 補完キー（Tab, Ctrl+i) で順に補完候補を自動で補完
#setopt auto_menu

# rm * 実行前に確認
setopt rmstar_wait

# カッコの対応などを自動的に補完
setopt auto_param_keys

# ディレクトリ名の補完時に / を付加
setopt auto_param_slash

# リダイレクトで上書きすることを許可しない
setopt no_beep

# cdで自動的にpushd
setopt auto_pushd

# ビープ音を鳴らさない
setopt no_beep

# 直前と同じコマンドラインはヒストリに追加しない
setopt hist_ignore_dups

# 重複したヒストリは追加しない
setopt hist_ignore_all_dups

# ヒストリを呼び出してから実行する間に一旦編集できる状態になる
setopt hist_verify

#エイリアスを設定したコマンドでも補完機能を使えるように
setopt complete_aliases

# zedエディタのロード
#autoload zed

# コマンドラインの引数で longoption の = 以降でも補完
setopt magic_equal_subst

# ファイル名の展開でディレクトリにマッチした場合末尾に / を付加
setopt mark_dirs

# 8 ビット目を通す(日本語のファイル名を表示可能)
setopt print_eight_bit

# 戻り値が0以外の場合終了コードを表示
#setopt print_exit_value

# Ctrl+wで､直前の/までを削除する
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# 補完候補を詰めて表示
setopt list_packed

# Tabで順に補完候補を切り替え
setopt auto_menu

# 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1

# = の後はパス名として補完
setopt magic_equal_subst

# 最終行が改行コードで終わっていないときクリアしない
setopt no_promptcr

# ファイルリスト補完でもlsと同様に色をつける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ディレクトリ名だけでディレクトリの移動をする
setopt auto_cd

# C-s, C-qを無効にする
setopt no_flow_control

# ^Dでログアウトしない
#setopt ignore_eof

# 補完時にスペルチェック
#setopt auto_correct

# Return を押す度にスペルチェック
#setopt correct
#setopt correct_all

# 空白から始まるコマンドは履歴に残さない
setopt hist_ignore_space

# Current Directoryが変更された時に実行する関数
function chpwd() { ls; chtitle; }

# プロンプト表示前に実行する関数
function precmd() { chtitle; }

# ディレクトリ補完時の/を削除しない
setopt noautoremoveslash

# 拡張グロブ
setopt extended_glob

# グロブ時にファイル名を数値としてソート
setopt numeric_glob_sort

# コマンド実行前に実行する関数
#function preexec() { }

# screenタイトルをカレントディレクトリに
function chtitle()
{
	[ "$TERM" = "screen" ] && \
		echo -ne "\ek`pwd | sed -n 's/^.*\/\(.*\)$/\1\//p'`\e\\"
}

# ローカルのセッティングファイルを読み込む
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# screen 自動起動
#[ "$TERM" != "screen" ] && which screen >/dev/null && \
#	exec screen -S main #-xRR

# vim: foldmethod=marker ft=zsh :
