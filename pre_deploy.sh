#!/bin/sh

redis-cli config get stop-writes-on-bgsave-error
redis-cli config get save
redis-cli BGSAVE
redis-cli config get logfile
redis-cli config get dir
ls -l /var/log/redis/
ls -l /var/lib/redis/