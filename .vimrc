" UI config
set number           " show line numbers
set cursorline       " highlight current line
filetype indent on   " load filetype-specific indent files
set showcmd          " show command in bottom bar
set wildmenu         " visual autocomplete for command menu
set lazyredraw       " redraw only when we need to.
set showmatch        " highlight matching [{()}]

" Searching
set incsearch        " search as characters are entered
set hlsearch         " highlight matches

" Movement
"   move vertically by visual line
nnoremap j gj
nnoremap k gk
"   move to beginning/end of line
nnoremap B ^
nnoremap E $
"   highlight last inserted text
nnoremap gV `[v`]

" Spaces & TABs
set tabstop=2        " number of visual spaces per TAB
set softtabstop=2    " number of spaces in tab when editing
set expandtab        " tabs are spaces

syntax enable        " enable syntax processing

set mouse=v          " enable mouse control
