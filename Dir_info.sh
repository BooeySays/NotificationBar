#!/bin/bash

if [ -f .dir.nfo ]; then
    echo -e "📁:\033[01;33m $(dirs)\033[01;31m⁽\033[01;37mⁱ\033[01;31m⁾\033[m"
else
    echo -e "📁:\033[01;33m $(dirs)\033[m" 
fi

# $(dirs)\033[01;31m⁽\033[01;37mⁱ\033[01;31m⁾\033[m"