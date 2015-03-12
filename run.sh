#!/usr/bin/env bash

set -e


echo "${minion_id}" > /etc/salt/minion_id
# echo "master: ${salt_master}" >> /etc/salt/minion

/usr/bin/salt-minion -d --log-file=/var/log/salt-minion.log --log-file-level=info

tail -f /var/log/salt-minion.log
