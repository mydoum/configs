" initialize plug-in
execute pathogen#infect()
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
call pathogen#incubate()
source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
syntax on

" conf plug-in
"   easymotion
let g:EasyMotion_leader_key = '\'

"   tagbar
nmap <F8> :TagbarToggle<CR>

" tab into spaces
set tabstop=4
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

" temp commands -> learning
"nnoremap <up>    <nop>
"nnoremap <down>  <nop>
"nnoremap <left>  <nop>
"nnoremap <right> <nop>
"inoremap <up>    <nop>
"inoremap <down>  <nop>
"inoremap <left>  <nop>
"inoremap <right> <nop>

" trial binds
    "delete automaticaly the trailing whitespaces when :w
autocmd BufWritePre * :%s/\s\+$//e
