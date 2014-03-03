#!/bin/bash

HOST=`/bin/hostname`
if [ $HOST = "dataset2" ]; then
    echo "removing other/pagecounts-raw/2012/jan from $HOST"
    rm -rf /data/xmldatadumps/public/other/pagecounts-raw/2012/jan
fi

if [ $HOST = "dataset1001" ]; then
    echo "removing public/enwiki, public/elwiki from $HOST"
    rm -rf /data/xmldatadumps/public/enwiki /data/xmldatadumps/public/elwiki
fi

echo "done"
