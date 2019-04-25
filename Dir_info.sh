#!/bin/bash

if [ -f .dir.nfo ]; then
    echo -en "📁: $(dirs)\033[01;31m⁽\033[01;37mⁱ\033[01;31m⁾\033[m"
else
    echo -en "📁: $(dirs)" 
fi
