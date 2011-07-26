" Vim syntax file
" Language: LiName
" Maintainer:	AkumaNekoShogun
" Last Change:	Fri Sep 14 06:37:26     2007
" vim: ts=8 sw=8 et


if exists("b:current_syntax")
  finish
endif

syntax clear

syntax match   linameComment   	        ".*"
syntax match   linameCommand   	        "^[=!%]\+" skipwhite nextgroup=linameNumber
syntax match   linameNumber   	        "\d\+\t" skipwhite nextgroup=linameFile,linameFolder
syntax match   linameFile   	        ".*" contained
syntax match   linameFolder   	        ".*\\$" contained

highlight link linameComment            Comment
highlight link linameNumber             Number
highlight link linameCommand            Keyword
highlight linameFile                    gui=none
highlight linameFolder                  gui=underline

