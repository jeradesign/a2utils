#!/usr/bin/bash
len=`wc -c <$1`
# echo 'len =' '|'$len'|'
l=`printf '%04x' $len`
# echo 'l =' '|'$l'|'
# echo '\x'${2:2:2}'\x'${2:0:2}'\x'${l:2:2}'\x'${l:0:2}
printf '\x'${2:2:2}'\x'${2:0:2}'\x'${l:2:2}'\x'${l:0:2} | cat - $1 >${1%.bin}
