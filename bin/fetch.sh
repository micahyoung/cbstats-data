#!/bin/sh

JSONDIR=`dirname $0`/../json
FILE=`date +%s`.json

cd $JSONDIR
curl http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true > $FILE
git add -A .
git commit -m`date +%s`
[[ -n $1 ]] && git push
