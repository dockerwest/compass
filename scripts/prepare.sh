#!/bin/sh

user=compass
uid=1000
gid=1000

if [[ "root" != "$user" ]]; then
    if [[ ! -z "$C_UID" ]]; then
        uid=$C_UID
    fi

    if [[ ! -z "$C_GID" ]]; then
        gid=$C_GID
    fi

    addgroup -g $gid -S $user
    adduser -u $uid -S -s /sbin/nologin -D -G $user $user
fi

chown compass:compass /cssapp
