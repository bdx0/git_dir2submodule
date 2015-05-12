#!/bin/sh -
### make.sh ---
## Author: dbd
## Version: 0.0.1

### Commentary:
##
##


### Code:

rm -rf submodule
git clone https://gitlab.com/baoduyduong0206/dbd-tools.git submodule
cd dbd-tools 
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master`; do
    git branch --track ${branch##*/} $branch
done
git filter-branch --subdirectory-filter dbd_emacs.d  HEAD -- --all
git reset --hard
git gc --aggressive
git prune
git remote rm origin
git remote add origin git@github.com:duongbaoduy/dotemacs.git
read -p "created ..."