#!/bin/bash

echo "Enter git clone URL: "
read cloneURL

git clone $cloneURL

path=${cloneURL%.git}
dir=${path##*/}

cd dir 

for branch in `git branch -r | grep origin | grep -v HEAD`; 
  do
   git branch --track ${branch#remotes/origin/} $branch
   echo "----$branch cloned----"
  done
  