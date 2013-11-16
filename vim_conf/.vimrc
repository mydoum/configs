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

" show line numbers
set number

" syntax
colorscheme molokai-modified

" fix backspace problem
set backspace=start,eol,indent

" set backup
set backup
set backupdir=~/.vimtmp/backup
set directory=~/.vimtmp/temp

silent !mkdir -p ~/.vimtmp/backup
silent !mkdir -p ~/.vimtmp/temp

if version >= 700
    set undofile
        set undodir=~/.vimtmp/undo
            silent !mkdir -p ~/.vimtmp/undo
            endif
