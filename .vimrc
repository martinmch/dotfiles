filetype off
call plug#begin('~/.vim/plugged/')
Plug 'tpope/vim-fugitive'
Plug 'rhysd/vim-grammarous'
Plug 'reedes/vim-wordy'
Plug 'ledger/vim-ledger'
"Plug 'jamessan/vim-gnupg'
"Plug 'SirVer/ultisnips'            | Plug 'honza/vim-snippets'
call plug#end()
filetype plugin indent on

set number
set tw=72
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
set laststatus=2
set undodir=~/.vim/.runtime/undo
set backspace=2
set path+=**
set wildmode=full
set wildignore+=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set wildignore+=*.dll,*.exe,*.pdf
set listchars=tab:▸\ ,eol:¬
set completeopt=menuone,longest,preview
set complete=.,w,b,u,t,i,k
set fileencodings=utf-8
set statusline=%t\ %y%h%m%r%=%P\ %c,%l/%L
set complete=".,w,b,u,t,i,kspell"
let g:netrw_altv         = 1  " Open splits to the right
let g:netrw_liststyle    = 3  " Tree view

color hipster
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

nnoremap ,<tab> mc80A <esc>080lDgelD`cP
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
autocmd BufRead .vimpcrc set filetype=vim
