#!/bin/bash

SWARM_FILE="./docker-compose.yml"
STACK_NAME="odoo-stack-base"

#docker pull odoo-mueve:1.0
#docker pull postgres:13
docker stack deploy -c $SWARM_FILE $STACK_NAME
