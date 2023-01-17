#!/bin/sh

ip route delete default
ip r r default via 192.168.2.12
tail -f /dev/null