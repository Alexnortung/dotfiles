#!/bin/bash

#create directories if not exists
mkdir -p ~/.config/nvim

function ifNotExists() {
    FILENAME=$1;
    FILEDEST=$2;
    if [ -f "$FILEDEST" ]; then
        echo "$FILENAME already exists"; 
    else
        #link file here
        ln -s $(pwd)/$FILENAME $FILEDEST;
    fi
}

ifNotExists .gitconfig ~/.gitconfig
