set nocompatible

call plug#begin('~/.vim/plugged')
    " NERDTree
    Plug 'scrooloose/nerdtree'
    " TabNine completion engine - Fucking AMAZING
    Plug 'zxqfl/tabnine-vim'
    " Fun status bar
    Plug 'vim-airline/vim-airline'
    " The Search of gods
    Plug 'junegunn/fzf.vim'
    " C Vim extension
    Plug 'vim-scripts/c.vim'
    " Git plugin
    Plug 'tpope/vim-fugitive'
    " Vim themes
    Plug 'morhetz/gruvbox'
    " Jellybean colorscheme
    Plug 'nanotech/jellybeans.vim'
    " Go programming extension
    Plug 'fatih/vim-go'
    " Ultimate snippets for vim
    Plug 'sirver/ultisnips'
    " Snippest are seperate from engine
    Plug 'honza/vim-snippets'
    " Taglist
    Plug 'vim-scripts/taglist.vim'
    " Clang complete
    Plug 'rip-rip/clang_complete'
    " Buftabline
    Plug 'ap/vim-buftabline'
    " Tagbar
    Plug 'majutsushi/tagbar'
    " CtrlP
    Plug 'kien/ctrlp.vim'
    " Vim solarized colors
    Plug 'altercation/vim-colors-solarized'
    " Auto comment/decomment
    Plug 'tpope/vim-commentary'
    " Tabular
    Plug 'godlygeek/tabular'
    " Sneak - Easy movement
    Plug 'justinmk/vim-sneak'
    " More themes
    Plug 'flazz/vim-colorschemes'
    " Vim Startify Menu
    Plug 'mhinz/vim-startify'
    " Arduino
    Plug 'stevearc/vim-arduino'
    " Surround
    Plug 'tpope/vim-surround'
    " Session plugin
    Plug 'xolox/vim-session'
    " Vim misc
    Plug 'xolox/vim-misc'
call plug#end()

" Colors
colorscheme grb256

if has('gui_macvim')
    " set guifont=Hack:h10
    set guifont=SFMono-Regular:h10
    set linespace=0
endif

" Sneak config options
let g:sneak#label = 1

" Clang completion engine
if has('linux')
    let g:clang_library_path = '/lib/x86_64-linux-gnu/libclang-10.so'
    let g:clang_c_options = '-std=c11'
    let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
endif

" Ctrl-P
let g:ctrlp_show_hidden = 1

set hidden
nnoremap <C-M> :bnext<CR>
nnoremap <C-N> :bprev<CR>

" Line numbers
set nu

" Menus
set display+=lastline
set wildmenu
set wildmode=list:full
set wildignorecase

set ttyfast
set nowrap

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4

set smarttab
set autoindent
set smartindent

set shell=/bin/zsh

" Get rid of trailing white space when we save.
autocmd BufWritePre * %s/\s\+$//e

" Re-indent html when we write the file.
autocmd BufWritePre *.html :normal gg=G

set encoding=utf-8
set noerrorbells
set novisualbell
set nocursorcolumn
set autochdir
set noswapfile

" set nolist
set nocursorcolumn
set nocursorline

" Mouse support
set mouse=a

" Set crypt method
set cm=blowfish2

filetype plugin indent on
filetype on

" leader key set to comma
let mapleader=","


" Toggle NERDTree
nnoremap <Leader>f :NERDTreeToggle<Enter>

" Toggle TagBar
nnoremap <Leader>t :TagbarToggle<Enter>

"" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
"
" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=trail:·,tab:▸\ ,eol:¬
nnoremap <leader>l :set list!<CR> " Toggle tabs and EOL
nnoremap <leader>ec :e $MYVIMRC<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

set belloff=all
let g:session_autosave = 'no'

" Vimscripts file settings =========== {{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}}
