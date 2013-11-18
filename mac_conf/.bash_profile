# add to path the gopath
export gopath=/users/alonso/documents/go:$home/dropbox/go
export path=/usr/local/bin:$path:$gopath/bin:/usr/local/share/npm/bin:/opt/local/bin:/opt/local/sbin
export goroot=/usr/local/go
export node_path=/usr/local/lib/node
export pythonpath=/usr/local/lib/python2.7/site-packages

# personnal aliases
alias path='echo -e ${path//:/\\n}'
alias godebug='go build -gcflags "-n -l"'
alias l='ls -gfh'
alias la='ls -a'
alias ll='ls -lv'
alias tree='tree -c'
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
export ps1="\[\033[31m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export clicolor=1

# less man page colors (makes man pages more readable).
# from tldp.org
export less_termcap_mb=$'\e[01;31m'
export less_termcap_md=$'\e[01;31m'
export less_termcap_me=$'\e[0m'
export less_termcap_se=$'\e[0m'
export less_termcap_so=$'\e[01;44;33m'
export less_termcap_ue=$'\e[0m'
export less_termcap_us=$'\e[01;32m'
