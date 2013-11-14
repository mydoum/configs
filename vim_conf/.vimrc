" initialize plug-in
execute pathogen#infect()
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
call pathogen#incubate()
syntax on

" tab into spaces
set tabstop=2
set shiftwidth=4
set expandtab

set number

" syntax
colorscheme molokai-modified
