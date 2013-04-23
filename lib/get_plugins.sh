#!/bin/bash

function git_clone_or_pull {
  url=$1
  name=$(sed -e 's/^.*\/\([^\/]*\)\.git$/\1/' <<< $url)
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

mkdir -p vim/_backup
mkdir -p vim/_temp
mkdir -p vim/bundle

cd ./vim/bundle

while read url
do
  git_clone_or_pull $url
done < "../../bundles"

if test -e snipmate.vim/snippets/javascript.snippets; then
  rm snipmate.vim/snippets/javascript.snippets
fi
