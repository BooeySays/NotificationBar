#!/bin/bash


MainClr='\033[31m'
 
function preview(){
    if [ $MainClr ]; then
        PreviewMainColor=$MainClr
    else
        PreviewMainColor='\033[37m'
    fi
    if [ $FontClr ]; then
        PreviewFontColor=$FontClr
    else
        PreviewMFontColor='\033[37m'
    fi

    echo -e """
$PreviewMainColor    ⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼
     \033[01;33mCUR DIR\033[37m: $PreviewFontColor~/blah\t\t\t$(date +%r)
$PreviewMainColor    ⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼
\033[m
"""
}



