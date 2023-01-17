#!/bin/sh
echo box_c1
cp -R /data/frr/* /etc/frr/
chown -R frr:frr /etc/frr/s
ip route delete default
service frr start
tail -f /dev/null