function hex {
 for num in $@
 do
  echo "obase=16;${num}" | bc
 done
}

function bin {
 for num in $@
 do
  echo "obase=2;${num}" | bc
 done
}

function dec {
 for num in $@
 do
  echo "ibase=16;obase=A;${num}" | bc
 done
}

function cal() { [[ -z $2 && $1 -le 12 && $1 -gt 0 ]] && command cal $1 $(date +%Y) || command cal $@; }
