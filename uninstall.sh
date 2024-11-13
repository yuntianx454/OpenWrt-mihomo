#!/bin/sh

if [ -x "/bin/opkg" ]; then
	opkg remove mihomo --force-removal-of-dependent-packages
elif [ -x "/usr/bin/apk" ]; then
	apk del mihomo
fi

rm -rf /etc/mihomo
rm -f /etc/config/mihomo
