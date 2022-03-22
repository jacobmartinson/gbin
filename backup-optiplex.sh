#!/bin/bash

destdir=/mnt/g/backup-optiplex/daily
mkdir -p $destdir

destfile=${destdir}/$(date +%Y.%m.%d-%H.%M.%S-%s).tpxz

cd /mnt/c/Users/jacob
tar -v -Ipixz -cf $destfile \
--exclude='Documents/software' \
--exclude='g/h' \
--exclude='*.msi' \
--exclude='*.exe' \
--exclude='.terraform' \
--exclude='.git' \
Documents \
Desktop

