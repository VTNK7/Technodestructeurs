#!/bin/sh

ip route delete default
ip r r default via 120.0.36.12
tail -f /dev/null