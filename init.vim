" let g:base16_shell_path='base16-builder/output/shell/'

set background=dark
set termguicolors

set relativenumber
set number
set autoindent
set showmatch
set cursorline
set textwidth=80
set wrapmargin=0
set ts=4 sw=4 sts=4 sta

set mouse=a

let mapleader=","

call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
"Plug 'tmhedberg/SimpylFold'
Plug 'jalvesaq/vimcmdline'
"Plug 'scrooloose/syntastic'
Plug 'chriskempson/base16-vim'
" Plug 'hdima/python-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'fs111/pydoc.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
"Plug 'justinmk/vim-syntax-extra'
Plug 'tmhedberg/matchit'
Plug 'jpalardy/vim-slime'
Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'edkolev/tmuxline.vim'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-system-copy'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'mhinz/vim-startify'
" Plug 'klen/python-mode'
Plug 'tpope/vim-commentary'
Plug 'severin-lemaignan/vim-minimap'
Plug 'taketwo/vim-ros'
Plug 'neomake/neomake'
call plug#end()

""""""""""""""
" Deoplete
""""""""""""""

let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-6.0/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header='/usr/lib/llvm-6.0/lib/clang'

""""""""""""""

""""""""""""
" Neomake
""""""""""""
" when to activate neomake
call neomake#configure#automake('rw', 50)

let g:neomake_python_pylint_maker = {
  \ 'args': [
  \ '-d', 'C0103, C0111',
  \ '-f', 'text',
  \ '--msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}"',
  \ '-r', 'n'
  \ ],
  \ 'errorformat':
  \ '%A%f:%l:%c:%t: %m,' .
  \ '%A%f:%l: %m,' .
  \ '%A%f:(%l): %m,' .
  \ '%-Z%p^%.%#,' .
  \ '%-G%.%#',
  \ }

" which linter to enable for Python source file linting
let g:neomake_python_enabled_makers = ['flake8', 'pylint']

""""""""""""

set foldmethod=manual

colorscheme nord

" Auto-source init.vim
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
