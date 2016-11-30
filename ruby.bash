# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load rbenv
if which rbenv &> /dev/null
then
    eval "$(rbenv init -)"
fi
