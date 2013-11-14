# add to path the gopath
export GOPATH=/Users/alonso/Documents/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/usr/local/share/npm/bin
export GOROOT=/usr/local/go
export NODE_PATH=/usr/local/lib/node
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:

# personnal aliases
alias path='echo -e ${PATH//:/\\n}'
alias godebug='go build -ldflags'
