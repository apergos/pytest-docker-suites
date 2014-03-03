#!/bin/bash

HOST=`/bin/hostname`
if [ $HOST = "dataset2" ]; then
    echo "noop"
fi

if [ $HOST = "dataset1001" ]; then
    echo "noop"
fi

echo "done"
