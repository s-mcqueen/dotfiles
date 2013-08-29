set noruler
set laststatus=2  

set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%{fugitive#statusline()}
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

set nocompatible
set noswapfile

" leader for extra maps
let mapleader = ","
let g:mapleader = ","

" force myself to use hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" move around faster
map fh 10h
map fj 10j
map fk 10k
map fl 10l

map ffj 60j
map ffk 60k

" jj exits 
map! jj <ESC>

" tab moving
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>nn :tabn<cr>

"colors
syntax on
set background=dark
colorscheme solarized

"random
set number
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set autoread      " reload files outside vim

" map Q to q, W to w, etc
command Q q
command W w
command WQ wq
command Wq wq

call pathogen#infect()
call pathogen#helptags()

" go is awesome
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

