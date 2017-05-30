#!/bin/sh

echo "server=$(getent hosts dnscrypt | cut -d' ' -f1)#5353" >> /etc/dnsmasq.conf

exec dnsmasq --keep-in-foreground --log-facility=- -q
