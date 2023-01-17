#!/bin/sh

ip route delete default
ip r r default via 192.168.1.11
tail -f /dev/null