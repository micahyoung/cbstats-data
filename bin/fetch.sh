#!/bin/sh

JSONDIR=`dirname $0`/../json
FILE=`date +%s`.json

cd $JSONDIR
curl --retry 30 http://appservices.citibikenyc.com/v1/station/list?updateOnly=true > $FILE
ls *.json > ../index.txt
cd ../
git add -A .
git commit -m`date +%s`
test -n "$1" && git push && git gc --auto
