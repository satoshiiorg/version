#!/bin/bash

# 引数チェック
if [ $# -ne 1 ]; then
    echo "Usage:"
    echo "$0 <command>"
    exit 1
fi

# 第一引数コマンドのバージョンを確認する
command="$1"
options=("--version" "-version" "-v" "-V")

# コマンドの存在チェック
type $command > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "$command not found."
    exit 1
fi

# ループで順に試す
i=0
for option in ${options[@]}; do
    result=`$command $option 2>&1`
    code=$?
    if [ $code -eq 0 ]; then
        echo "[$command $option]"
        echo $result
        exit 0
    fi
    let i++
done

# いずれのオプションでも異常終了
echo "No suitable version option found."
exit 1
