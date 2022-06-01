#!/bin/bash

sudo screen -d -m -L -Logfile /var/log/k3s.log /usr/local/bin/k3s server

