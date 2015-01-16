" Only do this when not done yet for this buffer
" if exists("b:did_ftplugin")
"   finish
"   endif
"
" Don't load another plugin for this buffer
nnoremap <buffer> <C-d> :call <SID>var_dump()<CR>
nnoremap <buffer> <C-e> :call <SID>echo_test()<CR>

function! <SID>var_dump()
	setl iskeyword +=$,-,>,.
    call append(line('.'),"echo jsonencode(".expand("<cword>").");exit;")
    exec ":w"
	setl iskeyword<
endfunction

function! <SID>echo_test()
	setl iskeyword +=$,-,>,.
    call append(line('.'),"echo \"test\";exit;")
    exec ":w"
	setl iskeyword<
endfunction
