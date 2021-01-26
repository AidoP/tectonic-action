#!/bin/sh
cd $1
find ./ -follow -type f -name '*.tex' -exec sh -c 'pandoc -t pdf -o "'../$2/'$(echo {} | sed s/\\.tex/.pdf/)" "{}" \' \;