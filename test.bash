#!/bin/bash -xv

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(./plus 1 2 3 4 5)
[ "${out}" = 15.0 ] || ng ${LINENO}

out=$(./plus 1 2 3 a 4 5)
[ "${out}" = ERROR:4番目に数字以外が含まれる$'\n'15.0 ] || ng ${LINENO}

out=$(./plus 1 2 3 4.5 4.5)
[ "${out}" = 15.0 ] || ng ${LINENO}

out=$(./plus a b c)
[ "${out}" = ERROR:1番目に数字以外が含まれる$'\n'ERROR:2番目に数字以外が含まれる$'\n'ERROR:3番目に数字以外が含まれる$'\n'0.0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
