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

" better single word changing
nmap pw :inoremap <lt>Space> <lt>Space><lt>Esc>:iunmap <lt>lt>Space><lt>CR><CR> cw


set nocompatible
"set nowrap
set noswapfile


" leader for extra maps
let mapleader = ","
let g:mapleader = ","

" force myself to use hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" NERDTree
map nt :NERDTreeToggle <Enter>
filetype plugin indent on

autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1


" ctrl-p
let g:ctrlp_open_new_file = 't'
map pp :CtrlP <Enter>

  let g:ctrlp_prompt_mappings = {
      \ 'PrtBS()':              ['<bs>', '<c-]>'],
      \ 'PrtDelete()':          ['<del>'],
      \ 'PrtDeleteWord()':      ['<c-w>'],
      \ 'PrtClear()':           ['<c-u>'],
      \ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
      \ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
      \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
      \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
      \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
      \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
      \ 'PrtHistory(-1)':       ['<c-n>'],
      \ 'PrtHistory(1)':        ['<c-p>'],
      \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
      \ 'AcceptSelection("t")': ['<c-t>'],
      \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
      \ 'ToggleFocus()':        ['<s-tab>'],
      \ 'ToggleRegex()':        ['<c-r>'],
      \ 'ToggleByFname()':      ['<c-d>'],
      \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
      \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
      \ 'PrtExpandDir()':       ['<tab>'],
      \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
      \ 'PrtInsert()':          ['<c-\>'],
      \ 'PrtCurStart()':        ['<c-a>'],
      \ 'PrtCurEnd()':          ['<c-e>'],
      \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
      \ 'PrtCurRight()':        ['<c-l>', '<right>'],
      \ 'PrtClearCache()':      ['<F5>'],
      \ 'PrtDeleteEnt()':       ['<F7>'],
      \ 'CreateNewFile()':      ['<c-y>'],
      \ 'MarkToOpen()':         ['<c-z>'],
      \ 'OpenMulti()':          ['<c-o>'],
      \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
      \ }
"jj gets out of insert mode

map fh 10h
map fj 10j
map fk 10k
map fl 10l

map ffj 40j
map ffk 40k
map! jj <ESC>

" smart way to move windows
map wj  <C-W>j
map wk  <C-W>k
map wh  <C-W>h
map wl  <C-W>l

" tab moving
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>nn :tabn<cr>

set autoread                    "Reload files changed outside vim

"colors ============================
syntax on
set background=dark
colorscheme solarized

"random=============================
set number
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
		  "    case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set scrolloff=8         "Start scrolling when we're 8 lines away from margins


call pathogen#infect()
call pathogen#helptags()

