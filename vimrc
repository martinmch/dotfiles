filetype off
call plug#begin('~/.vim/plugged/')
Plug 'tpope/vim-fugitive'
Plug 'reedes/vim-wordy'
Plug 'jamessan/vim-gnupg'
Plug 'SirVer/ultisnips'            | Plug 'honza/vim-snippets'
call plug#end()
filetype plugin indent on

set nocompatible
set backspace=2
set noswapfile
set number
set expandtab
set nowrap
set hidden
set undofile
set list
set title
set wildmenu
set nobackup
set splitbelow splitright
set scrolloff=7
set complete=".,w,b,u,t,i,kspell"
set thesaurus+=/usr/share/vim/mthesaur
set laststatus=2
set tabstop=4
set sw=4
set tw=73
set undodir=~/.vim/.runtime/undo
set path+=**
set wildmode=full
set wildignore+=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set wildignore+=*.dll,*.exe,*.pdf
set listchars=tab:▸\ ,eol:¬
set completeopt=menuone,longest,preview
set complete=.,w,b,u,t,i,k
set fileencodings=utf-8

colo hipster
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%74v.\+/

augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
