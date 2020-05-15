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
    " ACK
    Plug 'mileszs/ack.vim'
    " Auto comment/decomment
    Plug 'tpope/vim-commentary'
    " vem-tabline
    Plug 'pacha/vem-tabline'
    " Tabular
    Plug 'godlygeek/tabular'
call plug#end()
 

set nu
set t_Co=256

colorscheme jellybeans

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

set nolist
set nocursorcolumn
set nocursorline

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
set listchars=tab:▸\ ,eol:¬
"
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Navigate tabs/buffers

nnoremap <left> :bprev<CR>
nnoremap <right> :bnext<CR>
nnoremap <up> :tabnext<CR>
nnoremap <down> :tabprev<CR>
