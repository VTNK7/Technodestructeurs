#!/bin/sh
set -x
service frr start
ip route delete default
tail -f /dev/null
