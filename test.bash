#!/bin/bash -xv

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(./plus 1 2 3 4 5)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(./plus 1 2 3 a 4 5)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = 15 ] || ng ${LINENO}

out=$(./plus a b c d e)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = 0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
