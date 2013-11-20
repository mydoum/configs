# add to path the gopath
export GOPATH=$HOME/Dropbox/go:/Users/alonso/Documents/go
export PATH=/usr/local/bin:$PATH:$GOPATH/bin:/usr/local/share/npm/bin:/opt/local/bin:/opt/local/sbin
export GOROOT=/usr/local/go
export NODE_PATH=/usr/local/lib/node
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export CURR=$HOME/Dropbox/go/src/string_test/test03/

# personnal aliases
alias path='echo -e ${PATH//:/\\n}'
alias godebug='go build -gcflags "-N -l"'
alias l='ls -GFh'
alias la='ls -a'
alias ll='ls -lv'
alias tree='tree -C'
alias untar='tar -zxvf'

# personnal functions
function mkcd(){
    mkdir $1
    cd $1
}

function lman(){
    man $1 | less
}
alias man='lman'

# prompt & colors
export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1

# LESS man page colors (makes Man pages more readable).
# from tldp.org
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
