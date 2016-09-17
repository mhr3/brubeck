#!/bin/sh

STATSD_PORT=${STATSD_PORT-8125}
STATSD_WORKERS=${STATSD_WORKERS-4}
CARBON_HOST=${CARBON_HOST-127.0.0.1}
CARBON_PORT=${CARBON_PORT-2003}
CARBON_PICKLE=${CARBON_PICKLE-false}

cat /opt/brubeck/config.template.json \
    | jq ".samplers[0].port = ${STATSD_PORT}" \
    | jq ".samplers[0].workers = ${STATSD_WORKERS}" \
    | jq ".backends[0].address = \"${CARBON_HOST}\"" \
    | jq ".backends[0].port = ${CARBON_PORT}" \
    | jq ".backends[0].pickle = ${CARBON_PICKLE}" \
    > /opt/brubeck/config.json

exec /opt/brubeck/brubeck --log /var/log/brubeck.log --config /opt/brubeck/config.json
