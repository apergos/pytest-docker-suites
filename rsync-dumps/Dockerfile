FROM ariel/dev:base

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y bsd-mailx rsync

ADD rsyncd.conf /etc/rsyncd.conf

# not needed amy more probably
ADD tests/data/data_dir.tar.gz /

EXPOSE 873 22
CMD /usr/bin/rsync --daemon --config /etc/rsyncd.conf --bwlimit=50000 && /usr/sbin/sshd -D

