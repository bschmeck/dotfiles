function rev {
    #file name in $1 and line number in $2
    min=$(($2-1))
    max=$(($2+1))
    hg annotate $1 | sed -e "1,${min} d" -e "${max},$ d" -e 's_\([0-9]*\):.*_\1_'
}

#===== Functions for working with an HG repo =====
function logline {
    #file name in $1 and line number in $2
    revno=`rev $1 $2`
    hg log -v -r $revno
}

function logrev {
    #revision number in $1
    if [ x$1 = x ] ; then
	read revno
    else
	revno=$1
    fi
    hg log -v -r $revno
}

function linediff {
    #file name in $1 and line number in $2
    #revno=`rev $1 $2`
    #hg diff -r "$(($revno-1))" -r "${revno}"
    revdiff `rev $1 $2`
}

function revdiff {
    # revision number in $1
    hg diff -r "$(($1-1))" -r "${1}"
}
