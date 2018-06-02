#!/bin/bash

# 引数チェック
if [ $# -ne 1 ]; then
    echo "Usage:"
    echo "$0 <command>"
    exit 1
fi

command="$1"
option="--version"

case $command in
    git|node|ruby|python|perl)
        option="--version"
    ;;
    
    java|javac|kotlin|kotlinc|scala|scalac|gradle)
        option="-version"
    ;;
    
    # python)
    #     option="-V"
    # ;;
    
    # node|ruby|perl)
    #     option="-v"
    # ;;
    
    *)
        echo "unknown command: command"
        echo "check some options..."
        # 閉じるのどうする？
    ;;
esac

$command $option
