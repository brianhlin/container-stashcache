#!/bin/bash

env
echo "Starting cache ..."
su -p xrootd -s /bin/sh -c "/usr/bin/xrootd -d -c /etc/xrootd/xrootd-stashcache-cache-server.cfg -k fifo -s /var/run/xrootd/xrootd-stashcache-cache-server.pid -n stashcache-cache-server"
