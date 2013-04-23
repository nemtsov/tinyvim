#!/bin/bash

BACKUP_DIR=~/.vim_old_bkp_`date +%s`

echo "[ BACKING-UP CURRENT to $BACKUP_DIR ]"

mkdir -p $BACKUP_DIR
[[ -d ~/.vim ]] && mv ~/.vim $BACKUP_DIR/vim
[[ -e ~/.vimrc ]] && mv ~/.vimrc $BACKUP_DIR/vimrc
[[ -e ~/.gvimrc ]] && mv ~/.gvimrc $BACKUP_DIR/gvimrc
