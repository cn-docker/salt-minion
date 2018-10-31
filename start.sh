#!/bin/bash

SALTMASTER_ENDPOINT=$1

echo "master: $SALTMASTER_ENDPOINT" >> /etc/salt/minion

systemctl restart salt-minion

#exec "$@"
tail -f /var/log/salt/minion