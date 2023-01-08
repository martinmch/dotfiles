call plug#begin('~/.vim/plugged/')
    Plug 'tpope/vim-fugitive'
call plug#end()

set autoread
set nu
set ts=4 sw=4 et sts=4 tw=78 cc=81
set fo+=r
set ignorecase smartcase
set noswapfile
set nowrap
set hidden

set splitbelow splitright
set scrolloff=7
set dictionary+=/usr/share/dict/words thesaurus+=~/.vim/mthesaur
set undofile undodir=~/.vim/.runtime/undo
set laststatus=2
set backspace=2
set path+=**
set formatoptions+=r
set wildmenu wildmode=longest:full,full
set wildignore+=*.o,*~,*.exe,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,*.dll,*.pdf
set list lcs=tab:▸\ ,trail:·
set completeopt=menuone,longest,preview
set complete+=kspell
set grepprg=grep\ -IrsnH
set fileencodings=utf-8
set statusline=%=%y%h%m%r

" Disallow colon in filenames. This allows me to have links to filenames with
" lines numbers, i.e. ~/.vimrc:32
set isfname-=:

" Open splits to the right
let g:netrw_altv         = 1
" Tree view
let g:netrw_liststyle    = 3
let g:netrw_banner       = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

color hipster
highlight Comment ctermfg=red
