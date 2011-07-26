if has('win32')
	" latex‚ğ³‚µ‚­Às‚·‚é‚½‚ß‚É•K—v
	setlocal shellslash
endif

let g:Tex_IgnoredWarnings =
	\"Underfull\n".
	\"Overfull\n".
	\"specifier changed to\n".
	\"You have requested\n".
	\"Missing number, treated as zero.\n".
	\"There were undefined references\n".
	\"Citation %.%# undefined\n".
	\"Font shape \`JT1/gt/m/it\' undefined\n".
	\"Font shape \`JY1/gt/m/it\' undefined\n".
	\"Font shape \`JT1/mc/m/it\' undefined\n".
	\"Font shape \`JY1/mc/m/it\' undefined\n".
	\"LaTeX Font Warning: Some font shapes were not available, defaults substituted.\n".
	\"LaTeX Warning: Reference"
let g:Tex_IgnoreLevel = 13
