#!/bin/bash

SWARM_FILE="./docker-compose2.yml"
STACK_NAME="odoo-stack2"

docker stack deploy -c $SWARM_FILE $STACK_NAME
