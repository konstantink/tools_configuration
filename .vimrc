" Auto reload of .vimrc file
autocmd! bufwritepost $MYVIMRC source $MYVIMRC


" Basic configuration
colorscheme desert
set showcmd
set matchpairs+=<:>
set statusline=%F%m%r%h%w\ [FF,FE,TE=%{&fileformat},%{&fileencoding},%{&encoding}\]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set clipboard=unnamed
set title
set nu
set hlsearch

filetype on
filetype plugin on
filetype indent on
syntax on

" Indent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set smartindent

" Auto complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview

set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" filetype plugin indent on

" Plugins
Bundle 'kevinw/pyflakes-vim'
Bundle 'nvie/vim-flake8'


" Flake8 configuartion
autocmd FileType python map <buffer> <F3>: call Flake8()<CR>
