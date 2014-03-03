#!/bin/bash

HOST=`/bin/hostname`
case "$HOST" in
    "dataset1001" | "dataset2" )
        echo "removing user ariel"
        LC_ALL=C /usr/sbin/deluser --quiet ariel
	LC_ALL=C /usr/sbin/delgroup --quiet ariel
	echo "replacing old timzeone"
	rm /etc/localtime; mv  /etc/localtime.old /etc/localtime
	;;
    * )
	;;
esac

echo "done"
