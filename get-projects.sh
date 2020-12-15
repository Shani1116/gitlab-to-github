#!/bin/bash

git clone <git/URL>

cd <path/to/git/project/folder> 

for branch in `git branch -r | grep origin | grep -v HEAD`; 
  do
   git branch --track ${branch#remotes/origin/} $branch
   echo "----$branch cloned----"
  done