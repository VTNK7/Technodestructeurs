#!/bin/sh
cp -R /data/frr/* /etc/frr/
chown -R frr:frr /etc/frr/

sysctl -w net.ipv4.ip_forward=1

service frr start

tail -f /dev/null