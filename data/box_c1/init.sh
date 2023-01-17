#!/bin/sh

cp -R /data/frr/* /etc/frr/ 
chown -R frr:frr /etc/frr/
ip route delete default
service frr start
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
tail -f /dev/null