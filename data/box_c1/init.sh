#!/bin/sh

cp -R /data/frr/* /etc/frr/ 
chown -R frr:frr /etc/frr/
ip route delete default
service frr start

#iptables -t nat -A POSTROUTING -s adresse_box/25 -o eth1 -j MASQUERADE

tail -f /dev/null