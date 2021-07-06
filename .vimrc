set nocompatible
filetype off
packloadall
silent! helptags ALL

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

silent! au BufNewFile,BufRead *.py

set history=700

filetype plugin on
filetype indent on

" Text, tab and indent related
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set smarttab
set ai
set si
set wrap
"set spell

" Auto read when a file is changed from the outside
set autoread
set autoindent
set fileformat=unix

" Status line
set laststatus=2
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %1

let python_highlight_all=1
colo elflord
syntax on

" Internface
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set hid
set hlsearch
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set nu
set relativenumber
set colorcolumn=80

" Colors and Fonts

set encoding=utf-8
set ffs=unix,dos,mac

" Files, backups and undo
set nobackup
set nowb
set noswapfile


Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'dense-analysis/ale'

" NERDTree open on startup
"autocmd vimenter * NERDTree

"let g:NERDTreeIndicatorMapCustom = {
    "\ "Modified"  : "✹",
    "\ "Staged"    : "✚",
    "\ "Untracked" : "✭",
    "\ "Renamed"   : "➜",
    "\ "Unmerged"  : "═",
    "\ "Deleted"   : "✖",
    "\ "Dirty"     : "✗",
    "\ "Clean"     : "✔︎",
    "\ 'Ignored'   : '☒',
    "\ "Unknown"   : "?"
    "\ }

"let g:NERDTreeShowIgnoredStatus = 1
"let NERDTreeShowHidden=1

call vundle#end()
filetype plugin indent on

