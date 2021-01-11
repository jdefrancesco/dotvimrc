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
    " Snippets
    Plug 'honza/vim-snippets'
    " Taglist
    Plug 'vim-scripts/taglist.vim'
    " Clang complete
    Plug 'rip-rip/clang_complete'
    " Next gen completion engine
    Plug 'shougo/neocomplete.vim'
    " Minibuf
    " Plug 'fholgado/minibufexpl.vim'
    " Tagbar
    Plug 'majutsushi/tagbar'
    " CtrlP
    Plug 'kien/ctrlp.vim'
    " Vim solarized colors
    Plug 'altercation/vim-colors-solarized'
    " Auto comment/decomment
    Plug 'tpope/vim-commentary'
    " vem-tabline
    Plug 'pacha/vem-tabline'
    " Tabular
    Plug 'godlygeek/tabular'
    " Sneak - Easy movement
    Plug 'justinmk/vim-sneak'
    " More themes
    Plug 'flazz/vim-colorschemes'
    " Vim ObjC
    Plug 'b4winckler/vim-objc'
    " Vim Startify Menu
    Plug 'mhinz/vim-startify'
call plug#end()

" Colors
set t_Co=256
" Italic support
" set t_ZH=[3m
" set t_ZR=^[[23m

" if has("gui_running")
"     colorscheme grb256
" else
"     colorscheme jellybeans
" endif
colorscheme tender

" Sneak config options
let g:sneak#label = 1

" Clang completion engine
let g:clanc_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

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

autocmd BufWritePre *.c,*.py %s/\s\+$//e

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
" Set mouse support for normal mode only to avoid creating visual
" selections when clicking around....
set mouse=n

" Set crypt method
set cm=blowfish2

filetype plugin indent on
filetype on

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
" set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
nnoremap <leader>l :set list!<CR> " Toggle tabs and EOL
nnoremap <leader>ec :e $MYVIMRC<CR>

" Navigate tabs/buffers
nnoremap <left> :tabprev<CR>
nnoremap <right> :tabnext<CR>
nnoremap <up> :bnext<CR>
nnoremap <down> :bprev<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

set belloff=all
