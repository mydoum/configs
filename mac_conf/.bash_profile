# add to path the gopath
export GOPATH=/Users/alonso/Documents/go
export PATH=/usr/local/bin:$PATH:$GOPATH/bin:/usr/local/share/npm/bin:/opt/local/bin:/opt/local/sbin:
export GOROOT=/usr/local/go
export NODE_PATH=/usr/local/lib/node
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:

# personnal aliases
alias path='echo -e ${PATH//:/\\n}'
alias godebug='go build -ldflags'
alias l='ls -GFh'
alias la='ls -a'
alias ll='ls -l'

# prompt & colors
export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
