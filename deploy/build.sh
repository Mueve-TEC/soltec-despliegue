#!/bin/bash
IMAGENAME="muevetec/odoo-base"
IMAGEVERSION="1.1"

docker build -t $IMAGENAME:$IMAGEVERSION . --no-cache

exit 0
