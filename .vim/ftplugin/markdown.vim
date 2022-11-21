function! WordCount()
   let s:old_status = v:statusmsg
   let position = getpos(".")
   exe ":silent normal g\<c-g>"
   let stat = v:statusmsg
   let s:word_count = 0
   if stat != '--No lines in buffer--'
     let s:word_count = str2nr(split(v:statusmsg)[11])
     let v:statusmsg = s:old_status
   end
   call setpos('.', position)
   return s:word_count 
endfunction

set statusline+=\ %{WordCount()}
"
" Markdown abbreviations
iabbrev --- ---<CR>title:<CR>date: <esc>:put =strftime('%Y-%m-%d')<CR>kJo---<esc>kkA
iabbrev <expr> ddate strftime('%Y-%m-%d')

iabbrev img ![Description](link)<esc>Flciw
iabbrev link [Description](link)<esc>Flciw

" Allow `gf` to navigate to filename.md from "filename".
setl suffixesadd+=.md

set spell
