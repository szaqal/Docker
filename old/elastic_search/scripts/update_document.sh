#!/bin/bash

source commons.sh

read NAME

curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} -XPOST "${ELASTIC_SERVER}/${NAME}/external/1/_update?pretty" -H 'Content-Type: application/json' -d '{ "doc": { "name": "John Doe" } }'

curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} -XPOST "${ELASTIC_SERVER}/${NAME}/external/1/_update?pretty" -H 'Content-Type: application/json' -d '{ "doc": { "name": "John Doe": "age":20 } }'
