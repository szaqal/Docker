#!/bin/bash

source commons.sh


read NAME

curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} -XPUT "${ELASTIC_SERVER}/${NAME}/external/1?pretty&pretty" -H 'Content-Type: application/json' -d'
{
  "name": "John Doe"
}
'

curl -u ${ELASTIC_USER}:${ELASTIC_PASSWORD} -XGET "${ELASTIC_SERVER}/${NAME}/external/1?pretty&pretty"


