#!/bin/bash

set -e

CRON_FILE=/app/crontab

if [ -n "$CRONTAB" ]; then
    echo "$CRONTAB" > "$CRON_FILE"
fi

exec /usr/local/bin/supercronic "$CRON_FILE"
