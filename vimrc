set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set number
set rnu

" highlighting config
hi Search cterm=NONE ctermfg=white ctermbg=brown
map <C-h> :noh<Enter>

" python debug
ia pdb import pdb; pdb.set_trace()<ESC>
ia stack import traceback; traceback.print_stack()<ESC>
ia banana print('  BANANA !\n')<ESC>

" copy and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" lightline config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())',
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ }
      \ }

" ctrlp ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(git|hg|svn|doc)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" show whitespaces
map <C-s> :ShowWhiteToggle<CR>

" jedi-vim settings
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 0

" Plug, the vim plugin manager
call plug#begin('~/.config/nvim/plugged')

" lightline
Plug 'itchyny/lightline.vim'

" ctrlp
Plug 'kien/ctrlp.vim'

" flake8
Plug 'nvie/vim-flake8'

" show whitespaces
Plug 'chrisbra/vim-show-whitespace'

" fugitive
Plug 'tpope/vim-fugitive'

" Jedi - py autocomplete
Plug 'davidhalter/jedi-vim'

" SilverSearcher Ag
Plug 'rking/ag.vim'

" nerdtree
Plug 'scrooloose/nerdtree'
call plug#end()


