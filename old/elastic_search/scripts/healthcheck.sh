#!/bin/bash

source commons.sh

curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} http://${ELASTIC_SERVER}/_cat/health
