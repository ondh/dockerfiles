#!/bin/sh

if [ ! -f "/wow/etc/authserver.conf" ];then
    cp /server/authserver.conf.dist /wow/etc/authserver.conf
fi
if [ ! -f "/wow/etc/worldserver.conf" ];then
    cp /server/worldserver.conf.dist /wow/etc/worldserver.conf
fi

exec "$@"