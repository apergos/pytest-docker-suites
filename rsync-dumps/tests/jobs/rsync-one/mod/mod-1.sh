#!/bin/bash

HOST=`/bin/hostname`
if [ $HOST = "dataset2" ]; then
    echo "removing public/elwiki from $HOST"
    rm -rf /data/xmldatadumps/public/elwiki
    echo "removing other/pagecounts-raw/2012/jan from $HOST"
    rm -rf /data/xmldatadumps/public/other/pagecounts-raw/2012/jan
fi

if [ $HOST = "dataset1001" ]; then
    echo "removing other/incr other/iOS from $HOST"
    rm -rf /data/xmldatadumps/public/other/incr
    rm -rf /data/xmldatadumps/public/other/iOS
    echo "removing public/enwiki from $HOST"
    rm -rf /data/xmldatadumps/public/enwiki
fi

echo "done"
