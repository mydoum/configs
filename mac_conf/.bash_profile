# add to path the gopath
export GOPATH=$HOME/Dropbox/go:/Users/alonso/Documents/go
export PATH=/usr/local/bin:/usr/local/sbin:/opt/gccgo/bin:$PATH:$GOPATH/bin:/usr/local/share/npm/bin:/opt/local/bin:/opt/local/sbin:/usr/sbin
export GOROOT=/usr/local/go
export NODE_PATH=/usr/local/lib/node
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export CURR=$HOME/Documents/work/6sun/django


# command aliases
alias path='echo -e ${PATH//:/\\n}'
alias godebug='go build -gcflags "-N -l"'
alias l='ls -GFh'
alias la='ls -a'
alias ll='ls -lv'
alias tree='tree -C'
alias untar='tar -zxvf'
alias mkdir='mkdir -p'
alias sourceb='source ~/.bash_profile'
alias vimbash='vim ~/.bash_profile'

# personnal aliases
alias tunnel='ssh -D 8080 alonso@6sun.eu -t "command; bash -l"'

# shortcuts php
alias php-start='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist'
alias php-stop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist'
alias php-restart='php-stop && php-start'

# functions
function mkcd(){
    mkdir $1
    cd $1
}

function lman(){
    man $1 | less
}

# function to replace $CURR if you do often more than one command
function curr(){
    cd /Users/alonso/Documents/work/6sun/django
    source environment1/bin/activate
    cd website6sun
}

# start needed services to work
function start(){
    mysql.server start
    sudo nginx
    php-start
    curr
    $CURR/website6sun/manage.py runserver
}

function stop(){
    mysql.server stop
    sudo nginx -s stop
    php-stop
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

# fix tmux
[ -n "$TMUX" ] && export TERM=screen-256color

# powerline
# . ~/.vim/bundle/powerline/powerline/bindings/bash/powerline.sh

# Kaneton configuration
export KANETON_USER="alonso"
export KANETON_HOST="linux/ia32"
export KANETON_PLATFORM="ibm-pc"
export KANETON_ARCHITECTURE="ia32/educational"
export KANETON_PYTHON="/usr/bin/python"

##
# Your previous /Users/alonso/.bash_profile file was backed up as /Users/alonso/.bash_profile.macports-saved_2014-11-04_at_18:19:13
##

# MacPorts Installer addition on 2014-11-04_at_18:19:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

