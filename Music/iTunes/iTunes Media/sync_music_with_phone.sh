#!/usr/bin/env bash

if [ ! -d /Volumes/CCOUZENSMOB/ ]; then
    echo Please connect the phone and turn on USB storage
    exit 1
fi

cd ~/Music/iTunes/iTunes\ Media/
find ./Music/ -name ".*" -exec rm -r {} \;
rsync --delete-excluded --exclude-from=exclude-list.txt --exclude-from=exclude-list-phone.txt --exclude="*.m4v" --exclude="*.itlp/" --modify-window=1 -rtv ./Music /Volumes/CCOUZENSMOB/
