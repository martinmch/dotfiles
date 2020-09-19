set comments=sl:/*,mb:\ *,elx:\ */

nnoremap <F5> :mak!<cr>
nnoremap <F6> :mak! run<cr>

function! SwitchSourceHeader()
  if (expand ("%:e") == "c")
    find %:t:r.h
  else
    find %:t:r.c
  endif
endfunction

nmap <leader>s :call SwitchSourceHeader()<cr>
