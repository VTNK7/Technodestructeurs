#!/bin/sh
cp -R /data/frr/* /etc/frr/
chown -R frr:frr /etc/frr/
# Restore saved config
service frr start

tail -f /dev/null