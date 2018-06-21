#!/bin/bash

env
echo "Starting cache ..."
sleep infinity
su -p xrootd -s /bin/sh -c "/usr/bin/xrootd -l /var/log/xrootd/xrootd.log -c /etc/xrootd/xrootd-stashcache-cache-server.cfg -k fifo -s /var/run/xrootd/xrootd-stashcache-cache-server.pid -n stashcache-cache-server"
