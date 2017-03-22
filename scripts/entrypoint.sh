#!/bin/sh

/prepare.sh

if [ "/bin/sh" != "$1" ]; then
    exec su-exec compass "$@"
else
    exec "$@"
fi
