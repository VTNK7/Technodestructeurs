#!/bin/sh

cp -R /data/frr/* /etc/frr/
chown -R frr:frr /etc/frr/
service frr start
ip route delete default
tail -f /dev/null