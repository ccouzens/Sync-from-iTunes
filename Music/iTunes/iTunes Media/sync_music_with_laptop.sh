#!/usr/bin/env bash
cd ~/Music/iTunes/iTunes\ Media/
find ./Music/ -name ".*" -exec rm -r {} \;
rsync --delete-excluded --exclude-from=exclude-list.txt -avz ./Music laptop:~
