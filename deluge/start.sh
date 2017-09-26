#!/bin/sh

set -e

if [ ! -f "/deluge/config/core.conf" ]; then
	cp /deluge/core.conf /deluge/config/core.conf
fi

deluged -d -c /deluge/config -L info -l /deluge/deluged.log & deluge-web -c /deluge/config &
wait