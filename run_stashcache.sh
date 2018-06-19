#!/bin/bash

env
echo "Starting cache ..."
[ -z "$STASHCACHE_SPACE_LO_MARK" ] && STASHCACHE_SPACE_LO_MARK="0.75"
[ -z "$STASHCACHE_SPACE_HI_MARK" ] && STASHCACHE_SPACE_HI_MARK="0.85"

su -p xrootd -s /bin/sh -c "/usr/bin/xrootd -l /var/log/xrootd/xrootd.log -c /etc/xrootd/xrootd-stashcache-cache-server.cfg -k fifo -s /var/run/xrootd/xrootd-stashcache-cache-server.pid -n stashcache-cache-server"
