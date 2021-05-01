#!/bin/sh
set -e
echo "Creating Log File for Tacplus"
touch /var/log/tac_plus.log
echo "Starting SSH Server..."
/etc/init.d/ssh start
echo "Starting Local Rsyslog"
/etc/init.d/rsyslog start
echo "Starting Tacplus..."
#/etc/init.d/tac_plus start


#Extra line added in the script to run all command line arguments
#exec "$@";
