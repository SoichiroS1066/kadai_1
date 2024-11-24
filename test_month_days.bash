#!/bin/bash
# SPDX-FileCopyrightText: 2024 Soichiro Suzuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違います
    res=1
}

res=0    

### 通常の入力 ###
out=$(echo -e "2024\n2" | ./month_days)
[ "${out}" = "1~29" ] || ng "$LINENO"

out=$(echo -e "2023\n4" | ./month_days)
[ "${out}" = "1~30" ] || ng "$LINENO"

out=$(echo -e "2023\n12" | ./month_days)
[ "${out}" = "1~31" ] || ng "$LINENO"

### 誤った入力 ###
out=$(echo -e "2023\n13" | ./month_days)  # 存在しない月
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo -e "abc\n2" | ./month_days)    # 無効な年
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo -e "" | ./month_days)          # 入力がない場合
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res

