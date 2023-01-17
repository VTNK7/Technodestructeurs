#!/bin/sh
echo box_c1

ip route delete default
service frr start
tail -f /dev/null