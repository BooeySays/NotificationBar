#!/bin/bash

function DrawLine(){
    ScreensWidth=$COLUMNS
    while [ $ScreensWidth -gt 0 ]; do
        printf "$MainClr⎼\033[m"
        ((ScreensWidth -=1))
    done
    echo
    unset ScreensWidth
}

function DrawContents(){
    if [ $PB_LEFT ]; then
        echo -en "$PB_LEFT\r"
    fi

    if [ $PB_CENTER ]; then
        echo -en "$PB_CENTER\r"
    fi

    if [ $PB_RIGHT ]; then
        echo -en $PB_RIGHT
    fi
}

DrawLine
DrawContents
DrawLine