#!/bin/bash

URL=`curl -s $tmpout https://www.terraform.io/downloads.html | grep linux_amd64.zip | cut -d'"' -f2`

cd ~/bin

wget $URL
file=`ls -tr terraform_*_linux_amd64.zip | tail -1`

rm -f terraform

unzip $file
rm $file

terraform version
