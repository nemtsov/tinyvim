#!/bin/bash

function backup {
  BACKUP_DIR=~/.vim_old_bkp_`date +%s`
  mkdir -p $BACKUP_DIR
  [[ -d ~/.vim ]] && mv ~/.vim $BACKUP_DIR/vim
  [[ -e ~/.vimrc ]] && mv ~/.vimrc $BACKUP_DIR/vimrc
  [[ -e ~/.gvimrc ]] && mv ~/.gvimrc $BACKUP_DIR/gvimrc
}

function prepare {
  mkdir -p vim/_backup
  mkdir -p vim/_temp
  mkdir -p vim/bundle
  if test ! -e vim/bundle/vundle; then
    git clone https://github.com/gmarik/vundle.git vim/bundle/vundle
  fi
}

function install {
  ln -s "`pwd`/vim" ~/.vim
  ln -s "`pwd`/vimrc" ~/.vimrc
  ln -s "`pwd`/gvimrc" ~/.gvimrc
  vim +BundleInstall +qall
}

function post_install {
  if test -e vim/bundle/snipmate.vim/snippets/javascript.snippets; then
    rm vim/bundle/snipmate.vim/snippets/javascript.snippets
  fi
}

backup
prepare
install
post_install

echo ok
