#!/bin/bash

function git_clone_or_pull {
  url=$1
  name=`sed -e 's/^.*\/\([^\/]*\)\.git$/\1/' <<< $url`
  if [[ -d $name ]]
  then
    echo "Updating $name:"
    cd $name
    git pull
    cd ..
  else
    echo "Cloning $name:"
    git clone $url
  fi
}

echo "[ CREATING VIM DIR ]"

mkdir -p vim/_backup
mkdir -p vim/_temp
mkdir -p vim/bundle

echo "[ RETRIEVING PLUGINS ]"

cd ./vim/bundle

git_clone_or_pull https://github.com/scrooloose/nerdtree.git
git_clone_or_pull https://github.com/msanders/snipmate.vim.git
git_clone_or_pull https://github.com/ervandew/supertab.git
git_clone_or_pull https://github.com/pangloss/vim-javascript.git
git_clone_or_pull https://github.com/jnwhiteh/vim-golang.git
git_clone_or_pull https://github.com/juvenn/mustache.vim.git
git_clone_or_pull https://github.com/mattn/zencoding-vim.git
git_clone_or_pull https://github.com/airblade/vim-gitgutter.git
git_clone_or_pull https://github.com/kien/ctrlp.vim.git

if test -e snipmate.vim/snippets/javascript.snippets; then
  rm snipmate.vim/snippets/javascript.snippets
fi
