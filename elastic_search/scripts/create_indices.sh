#!/bin/bash

source commons.sh

read NAME

curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} -XPUT "${ELASTIC_SERVER}/${NAME}?pretty&pretty"
curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} -XGET "${ELASTIC_SERVER}/_cat/indices?v&pretty"

