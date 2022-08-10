filetype off
call plug#begin('~/.vim/plugged/')
Plug 'tpope/vim-fugitive'
call plug#end()
filetype plugin indent on

set autoread
set nu
set ts=2 sw=2 et sts=2 tw=81 cc=81
set fo+=r
set ignorecase smartcase " ignore case in search unless capital in string.
set noswapfile
set nowrap
set hidden
set undofile nobackup
set list

set splitbelow splitright
set scrolloff=7
set thesaurus+=/usr/share/vim/mthesaur
set undodir=~/.vim/.runtime/undo
set laststatus=2
set backspace=2
set path+=**
set formatoptions+=r

set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*~,*.exe,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,*.dll,*.pdf

set listchars=tab:▸\ ,eol:¬,trail:·
set completeopt=menuone,longest,preview
set complete+=kspell
set fileencodings=utf-8
set statusline=%t\ %y%h%m%r%=%P\ %c,%l/%L

let g:netrw_altv         = 1  " Open splits to the right
let g:netrw_liststyle    = 3  " Tree view
let g:netrw_banner       = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

"color hipster
color default
highlight Comment ctermfg=red
