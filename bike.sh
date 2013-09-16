#!/bin/sh

DATE=`date +%Y%m%d`
STATS="\n\t\t\t<tr><td>$DATE</td><td>$1</td><td>$2</td><td>$3</td><td>$4</td><td>$5</td></tr>"

cat index.html | sed "s~GOTTA_GO_FAST -->~GOTTA_GO_FAST -->$STATS~" > index.html.tmp
mv index.html.tmp index.html
git commit -m "Gotta go fast" index.html
git push upstream master
