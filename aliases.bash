# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias hgcleanup='hg status -un `hg root` | xargs rm -f'

alias edwin='scheme -edwin -edit'

alias log='cd ~/src/log; emacs postkid16.xml &'

alias appserver='python /home/bschmeck/appengine/dev_appserver.py'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
