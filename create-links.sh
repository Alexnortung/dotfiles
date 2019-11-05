#!/bin/bash

#create directories if not exists
mkdir -p ~/.config/nvim/

function ifNotExists() {
    FILENAME=$1;
    FILEDEST=$2;
    if [ -f "$FILEDEST" ] || [ -d "$FILEDEST" ]; then
        echo "$FILENAME already exists"; 
    else
        #link file here
        echo "Creating symbolic link for $FILENAME"
        ln -s $(pwd)/$FILENAME $FILEDEST;
    fi
}

ifNotExists .gitconfig ~/.gitconfig
ifNotExists init.vim ~/.config/nvim/init.vim
ifNotExists .zshrc ~/.zshrc
ifNotExists UltiSnips-nvim ~/.config/nvim/UltiSnips
