filetype off
call plug#begin('~/.vim/plugged/')
Plug 'tpope/vim-fugitive'
Plug 'ledger/vim-ledger'
call plug#end()
filetype plugin indent on

set number
set tw=80
set ts=4
set sw=4
set noswapfile
set et
set nowrap
set hidden
set undofile nobackup
set list
set title
set wildmenu
set splitbelow splitright
set scrolloff=7
set thesaurus+=/usr/share/vim/mthesaur
set undodir=~/.vim/.runtime/undo
set laststatus=2
set backspace=2
set path+=**
set wildmode=full
set wildignore+=*.o,*~,*.exe,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,*.dll,*.pdf
set listchars=tab:▸\ ,eol:¬
set completeopt=menuone,longest,preview
set complete=.,w,b,u,t,i,k
set fileencodings=utf-8
set statusline=%t\ %y%h%m%r%=%P\ %c,%l/%L
set complete=".,w,b,u,t,i,kspell"
let g:netrw_altv         = 1  " Open splits to the right
let g:netrw_liststyle    = 3  " Tree view
let g:netrw_banner       = 0
let g:netrw_browse_split = 4
set notitle

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"color hipster
color default

augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
