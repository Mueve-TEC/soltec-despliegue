#!/bin/bash

SWARM_FILE="./docker-compose.yml"
STACK_NAME="odoo-stack"

docker stack deploy -c $SWARM_FILE $STACK_NAME
