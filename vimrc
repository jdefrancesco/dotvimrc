set nocompatible

call plug#begin('~/.vim/plugged')
    " Note Taking
    Plug 'fmoralesc/vim-pad'
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
    " Plug 'rip-rip/clang_complete'
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
    " Fugitive Git
    Plug 'tpope/vim-fugitive'
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
    " EasyComplete
    Plug 'jayli/vim-easycomplete'
    " YCM
    " Plug 'valloric/youcompleteme'
    " Vim arduino support
    Plug 'stevearc/vim-arduino'
    Plug 'mangeshrex/everblush.vim'

call plug#end()

" Colors
set termguicolors
colorscheme everblush

if has('gui_macvim')
    " set guifont=Hack:h10
    set guifont=TerminusTTF:h14
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

if has('darwin')
    let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/'
    let g:clang_c_options = '-std=c11'
    let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
endif

let g:easycomplete_tab_trigger="<tab>"
let g:easycomplete_tabnine_config = {
    \ 'line_limit': 1000,
    \ 'max_num_result' : 10,
    \ }
noremap gr :EasyCompleteReference<CR>
noremap gd :EasyCompleteGotoDefinition<CR>
noremap rn :EasyCompleteRename<CR>
noremap gb :BackToOriginalBuffer<CR>

let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Ctrl-P
let g:ctrlp_show_hidden=1

let g:go_doc_popup_window = 1

nnoremap <C-M> :bnext<CR>
nnoremap <C-N> :bprev<CR>

" Menus
set display+=lastline
set wildmenu
set wildmode=list:full
set wildignorecase
set nu

set ttyfast
set nowrap

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set nocursorline
set ignorecase
set smartcase
set incsearch
set hlsearch

set shell=/bin/zsh
let g:session_autosave = 'yes'

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
set nocursorcolumn
set mouse=a
set cm=blowfish2
set fileformat=unix

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

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=trail:·,tab:▸\ ,eol:¬
nnoremap <leader>l :set list!<CR> " Toggle tabs and EOL
nnoremap <leader>ec :e $MYVIMRC<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:session_autosave = 'no'

let g:pad#dir = "~/Dropbox/ObsidianNotes/Pad/"

set belloff=all

" Vimscripts file settings =========== {{{{
" augroup filetype_vim
"     autocmd!
"     autocmd FileType vim setlocal foldmethod=marker
" augroup END
" }}}}
