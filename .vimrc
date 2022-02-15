set encoding=utf-8      " encoding

let mapleader=","       " leader is comma

filetype indent on      " attempt to determine the type of a file
filetype plugin on      " attempt to determine the type of a file

syntax enable           " enable syntax processing

" Spaces & Tabs
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" UI Config
set number              " show line numbers
set relativenumber      " show relative numbers
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set mouse-=a            " disable automatic visual mode on mouse select

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " use case insensitive search
set smartcase           " case insensitive except when using capital letters
