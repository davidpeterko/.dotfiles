
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Install hybrid color scheme
Plug 'w0ng/vim-hybrid'

" Install zenburn
Plug 'jnurmine/Zenburn'

" Gotham theme
Plug 'whatyouhide/vim-gotham'

" Install tagbar
Plug 'majutsushi/tagbar'

" Install CtrlP
Plug 'kien/ctrlp.vim'

" Install surround
Plug 'tpope/vim-surround'

" Tab completion
Plug 'Valloric/YouCompleteMe'

" Auto completion of quotes, parens, brackets, etc
Plug 'Raimondi/delimitMate'

" Lightline
Plug 'itchyny/lightline.vim'

" Plugin to open browser from vim: called :OpenBrowser www.google.com
Plug 'tyru/open-browser.vim'

" Install Syntastic
Plug 'scrooloose/syntastic'

" Install EasyMotion
Plug 'easymotion/vim-easymotion'

" NERDTree
Plug 'scrooloose/nerdtree'

" Supertab
Plug 'ervandew/supertab'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
" Set font
set guifont=Menlo\ 10
""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
"let g:lightline = {
""      \ 'colorscheme': 'solarized_light',
""      \ }
let g:lightline = { 'colorscheme': 'gotham' }

""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree on open
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NerdTree
nmap <F1> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Open tagbar on open
autocmd VimEnter * TagbarOpen

""""""""""""""""""""""""""""""""""""""""""""""
" Tag bar toggle
nmap <F2> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" My settings below

""""""""""""""""""""""""""""""""""""""""""""""
" This sets the auto completion of vim to behave like BASH terminal
set wildmode=longest:full
set wildmenu

""""""""""""""""""""""""""""""""""""""""""""""
" Highlight syntax
syntax on
syntax enable

""""""""""""""""""""""""""""""""""""""""""""""
" Set 256 colors
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme set
colorscheme gotham

""""""""""""""""""""""""""""""""""""""""""""""
" Sets the line numbers
set number

""""""""""""""""""""""""""""""""""""""""""""""
filetype indent plugin on

""""""""""""""""""""""""""""""""""""""""""""""
" Auto loads a file if it was edited outside MacVim
set autoread

""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
set ruler

""""""""""""""""""""""""""""""""""""""""""""""
" Height of the command bar
set cmdheight=2

""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

""""""""""""""""""""""""""""""""""""""""""""""
" When searching be smart about case
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search results
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""
" Modern search
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""
" No annoying sounds on errors or flash
autocmd GUIEnter * set visualbell t_vb=
"set noerrorbells
"set novisualbell
"set vb
"set t_vb=
"set t_vb=
"set tm=500

""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab, indention related
set smarttab
set shiftwidth=4
set tabstop=4
set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""
" Set status line always
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""
" Map control-P to ctrlp
let g:ctrlp_map = '<c-p>'

""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic config - user friendly set up
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""
" Remapped o and O
nmap <Enter> o<ESC>
nmap <S-Enter> O<ESC>

