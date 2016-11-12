set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set listchars=space:.,eol:$,tab:>-,trail:~,extends:>,precedes:<
nnoremap <F3> :set list!<CR>

function! NumberToggle()
    if(&relativenumber == 1)
        set number
   else
       set relativenumber
   endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

