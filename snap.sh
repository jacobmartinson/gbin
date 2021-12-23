#!/bin/bash

vhost=$(echo $VAULT_ADDR | cut -f3 -d/)
ts=$(date +%Y.%m.%d_%H:%M:%S_%s)
vault operator raft snapshot save raft_${vhost}_${ts}.snap
