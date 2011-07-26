if has('win32')
	setlocal makeprg=rst2html\ %\ nul
else
	setlocal makeprg=rst2html\ %\ /dev/null
endif

map <F5> :w<CR>!rst2html % %.html<CR>

setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal softtabstop=2

