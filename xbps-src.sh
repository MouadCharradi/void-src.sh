#!/bin/bash

DIR1=$HOME/void-packages
DIR2=$HOME/void-packages/srcpkgs

cd $DIR1 || exit
git pull

cd $DIR2 || exit
if [[ -d "$1" ]]
then
    cd $DIR1
    ./xbps-src pkg $1 && (doas xbps-install --repository hostdir/binpkgs $1 || (cd masterdir && xi $1) )
else
    printf "Not found"
fi
