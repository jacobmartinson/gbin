#!/bin/bash

rsync -v -a
--exclude='Documents/g/h'
--exclude='.exe'
--exclude='.terraform**'
--exclude='.git'
/mnt/c/Users/jacob/Documents/ /mnt/g/backup-optiplex/daily/$(date +%Y.%m.%d)

rsync -v -a
--exclude='.exe'
--exclude='.terraform**'
--exclude='.git'
/mnt/c/Users/jacob/Desktop/ /mnt/g/backup-optiplex/daily/$(date +%Y.%m.%d)

