#!/bin/bash
docker run -d -name dataset1001 -v /sys/fs/selinux:/selinux:ro ariel/rsync-testing:latest
docker run -d -name dataset2 -v /sys/fs/selinux:/selinux:ro ariel/rsync-testing:latest


