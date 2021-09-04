#!/bin/sh

SITEMAP=$1

if [ "$SITEMAP" = "" ]; then
    echo "Usage: $0 http://domain.com/sitemap.xml"
        exit 1
fi

a=0

while [ $a -lt  10 ]
do

XML=`curl --location --request GET $SITEMAP` 
URLS=`echo $a 'hit on' $SITEMAP`

a=`expr $a + 1`

echo $URLS >> log.txt
echo $URLS | tr ' ' '\n' 

done