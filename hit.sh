#!/bin/sh

SITEMAP=$1
LIMIT=$2

if [ "$SITEMAP" = "" ]; then
    echo "Usage: $0 http://domain.com/scrapeUrl"
        exit 1
fi

a=0

while [ $a -lt  $LIMIT ]
do

XML=`curl --location --request GET $SITEMAP` 
URLS=`echo $a 'hit on' $SITEMAP`

a=`expr $a + 1`

echo $URLS >> log.txt
echo $URLS | tr ' ' '\n' 

done