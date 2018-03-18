#!/bin/bash
#
# This script will install
# docker compose and docker machine
# for ubuntu 
#

COMPOSE_VER=$(docker-compose version)
MACHINE_VER=$(docker-machine version)

# docker machine install 
curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && \
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

echo "[+] Machine install complete."

# docker compose install
curl -L https://github.com/docker/compose/releases/download/1.20.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "[+] Compose install complete"


