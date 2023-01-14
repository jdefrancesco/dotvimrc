set nocompatible

call plug#begin('~/.vim/plugged')
    " Note Taking
    Plug 'fmoralesc/vim-pad'
    " NERDTree
    Plug 'scrooloose/nerdtree'
    " Fun status bar
    Plug 'vim-airline/vim-airline'
    " The Search of gods
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
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
    " Buftabline
    Plug 'ap/vim-buftabline'
    " Tagbar
    Plug 'majutsushi/tagbar'
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
    " Vim arduino support
    Plug 'stevearc/vim-arduino'
    " Everblush theme
    Plug 'mangeshrex/everblush.vim'
    " Tender colorscheme
    Plug 'jacoborus/tender.vim'

call plug#end()

" Colors
set termguicolors
colorscheme tender
let g:airline_theme = 'tender'

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

let g:pad#dir = "~/Dropbox/ObsidianNotes/Pad/"
set belloff=all


nmap <C-P> :FZF<CR>

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-p': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" - Popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }

" - Window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'
"
" Vimscripts file settings =========== {{{{
" augroup filetype_vim
"     autocmd!
"     autocmd FileType vim setlocal foldmethod=marker
" augroup END
" }}}}
"
let g:session_autoload = 'no'
