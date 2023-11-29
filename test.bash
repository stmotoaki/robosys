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
[ "${out}" = ERROR:数字以外が足されています
　"${out}" = 15 ] || ng ${LINENO}

out=$(./plus 1 2 あ 3 4 5)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = ERROR:数字以外が足されています 
  "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
