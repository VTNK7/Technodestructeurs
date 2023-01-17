#!/bin/sh

cp -R /data/frr/* /etc/frr/
chown -R frr:frr /etc/frr/
ip route delete default
service frr start
tail -f /dev/null