#!/bin/bash
commit="$1"
if [ x"$1" = x ]; then
    commit='update:'$(date +"%F_%H:%M:%S")
fi
echo $commit
git add .
git commit -m $commit
git push
