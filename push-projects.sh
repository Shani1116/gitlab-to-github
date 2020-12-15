#!/bin/bash

cd <path/to/git/project/folder>

git remote rm origin

git remote add origin <new/origin/url>

for branch in `git branch`; 
  do
    name=${branch##origin/}

    git push origin HEAD:${name}
    echo "----$branch pushed----"
  done  