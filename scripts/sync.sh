#!/bin/sh

REPOS=ping

set -e
cd "$(dirname "$0")/.."

for REPO in $REPOS
do
    if [ ! -d $REPO ]; then
        git clone https://github.com/gear-academy/ping.git
    else
        cd $REPO
        git pull
        cd ..
    fi
done
