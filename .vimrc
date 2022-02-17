filetype off
call plug#begin('~/.vim/plugged/')
Plug 'tpope/vim-fugitive'
Plug 'ledger/vim-ledger'
call plug#end()
filetype plugin indent on

set autoread " reload files when changed
set number   " show line numbers
set tw=78    " text width
set ts=4     " tab stop
set sw=4     " shift widt
set sts=2    " soft tab stops
set ignorecase smartcase " ignore case in search unless capital in string.
set noswapfile
set et
set nowrap
set hidden
set undofile nobackup
set list
set title

set splitbelow splitright
set scrolloff=7
set thesaurus+=/usr/share/vim/mthesaur
set undodir=~/.vim/.runtime/undo
set laststatus=2
set backspace=2
set path+=**

set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*~,*.exe,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,*.dll,*.pdf
set listchars=tab:▸\ ,eol:¬
set completeopt=menuone,longest,preview
set complete+=kspell
set fileencodings=utf-8
set statusline=%t\ %y%h%m%r%=%P\ %c,%l/%L
let g:netrw_altv         = 1  " Open splits to the right
let g:netrw_liststyle    = 3  " Tree view
let g:netrw_banner       = 0
let g:netrw_browse_split = 4
set notitle

"color hipster
color default

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col
        return "\<tab>"
    endif

    let char = getline('.')[col - 1]
    if char =~ '\k'
        " There's an identifier before the cursor, so complete the identifier.
        return "\<c-n>"
    else
        return "\<tab>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-p>
