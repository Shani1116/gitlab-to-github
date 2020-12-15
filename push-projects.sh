#!/bin/bash

echo "Enter git folder path: "
read path

echo "Enter new origin URL: "
read originURL

cd path

git remote rm origin

git remote add origin $originURL

for branch in `git branch`; 
  do
    name=${branch##origin/}

    git push origin HEAD:${name}
    echo "----$branch pushed----"
  done  