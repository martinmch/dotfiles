function! SwitchSourceHeader()
  if (expand ("%:e") == "h")
    find %:t:r.c
  else
    find %:t:r.h
  endif
endfunction
