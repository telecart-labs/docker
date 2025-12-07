#!/bin/bash

set -e

if [ -n "$CRONTAB" ]; then
    echo "$CRONTAB" > /etc/cron.d/crontab
    chmod 0644 /etc/cron.d/crontab
fi

exec /usr/local/bin/supercronic /etc/cron.d/crontab
