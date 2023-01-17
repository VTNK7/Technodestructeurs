#!/bin/sh

ip route delete default
ip r r default via 120.0.34.11
tail -f /dev/null