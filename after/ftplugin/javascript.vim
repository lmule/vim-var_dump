nnoremap <buffer> <C-d> :call <SID>console_log()<CR>
function! <SID>console_log()
	setl iskeyword +=-,.,[,]
    call append(line('.'),"console.log(".expand("<cword>").");")
    exec ":w"
	" reset the option
	setl iskeyword<
endfunction
