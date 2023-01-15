#!/bin/ash

# Restore saved config
cp -R /data/frr/* /etc/frr/
chown -R frr:frr /etc/frr/

if [ -r "/lib/lsb/init-functions" ]; then
        . /lib/lsb/init-functions
else
        log_success_msg() {
                echo "$@"
        }
        log_warning_msg() {
                echo "$@" >&2
        }
        log_failure_msg() {
                echo "$@" >&2
        }
fi

source /usr/lib/frr/frrcommon.sh
/usr/lib/frr/watchfrr $(daemon_list)