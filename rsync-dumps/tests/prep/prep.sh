#!/bin/bash

HOST=`/bin/hostname`
case "$HOST" in
    "dataset1001" | "dataset2" )
        echo "adding user ariel"
	groups ariel > /dev/null 2>&1
	if [ "$?" -ne "0" ]; then
	    LC_ALL=C /usr/sbin/groupadd  --gid 1000 ariel
	    LC_ALL=C /usr/sbin/useradd --uid 1000 -N --gid 1000 ariel
	fi
	echo "setting up timzeone"
	mv /etc/localtime /etc/localtime.old
	ln -s /usr/share/zoneinfo/Europe/Athens /etc/localtime
	echo "cleaning up data"
	rm -rf /data
	;;
    * )
	;;
esac

echo "done"
