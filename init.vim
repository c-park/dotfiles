" let g:base16_shell_path='base16-builder/output/shell/'

set background=dark
" let base16colorspace=256
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


call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
" Plug 'tmhedberg/SimpylFold'
Plug 'jalvesaq/vimcmdline'
"Plug 'daeyun/vim-matlab'
"Plug 'altercation/vim-colors-solarized'
"Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'scrooloose/syntastic'
Plug 'chriskempson/base16-vim'
" Plug 'hdima/python-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'fs111/pydoc.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
"Plug 'jpo/vim-railscasts-theme'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
"Plug 'JuliaLang/julia-vim'
"Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
"Plug 'justinmk/vim-syntax-extra'
Plug 'tmhedberg/matchit'
Plug 'jpalardy/vim-slime'
Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'edkolev/tmuxline.vim'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-system-copy'
"Plug 'Chiel92/vim-autoformat'
"Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'mhinz/vim-startify'
Plug 'klen/python-mode'
" Plug 'Valloric/vim-operator-highlight'
" Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug '/severin-lemaignan/vim-minimap'
call plug#end()

colorscheme nord

" autocmd! bufwritepost $MYVIMRC source $MYVIMRC
