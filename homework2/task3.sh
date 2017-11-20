#!/bin/bash
recursive(){
    echo $1
    FILES=$(find $1 -maxdepth 1 -type f | sort)
    DIRECTORIES=$(find $1 -maxdepth 1 -type d | tail -n +2 | sort)
    for item in $FILES
    do
        if ! file -i "$item" | grep binary > /dev/null
        then
            if wc -l $item 2>/dev/null >/dev/null
            then
                echo "  `wc -l $item`"
            fi
        fi
    done
    for item in $DIRECTORIES
    do
        recursive $item | sed 's/^/  /'
    done
}

recursive $1
