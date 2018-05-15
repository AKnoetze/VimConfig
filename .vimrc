set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" VUNDLE PLUGINS:
" Git support
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Tabline stuff
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Syntax
Plugin 'w0rp/ale'
" Navigation
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" VUNDLE PLUGIN CONFIGS:
" airline
let g:airline_theme='molokai'
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|zip|swp)$',
  \ }

" NON VUNDLE STUFF:
set expandtab
set tabstop=4
set softtabstop=4

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine ctermbg=DarkGray
set colorcolumn=80,120
highlight ColorColumn ctermbg=0 guibg=lightgrey

set splitbelow
set splitright

" Python only:
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ let python_highlight_all=1

syntax on

" All others:
set expandtab
set tabstop=4
set softtabstop=4
