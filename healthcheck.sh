#!/bin/bash
set -eo pipefail

if rabbitmqctl status; then
    STATUSCODE=$(curl --silent --output /dev/stderr --write-out "%{http_code}" http://localhost:15672)
    if test $STATUSCODE -eq 200; then
        exit 0
    fi
fi

exit 1
