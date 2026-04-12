#!/bin/bash
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
if ! pgrep nginx > /dev/null; then
    echo "[$TIMESTAMP] NGINX not running. Restarting..."
    service nginx start
    echo "[$TIMESTAMP] NGINX restart exit code: $?"
else
    echo "[$TIMESTAMP] NGINX is running OK."
fi
