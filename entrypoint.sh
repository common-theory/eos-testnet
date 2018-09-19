#!/bin/sh

set -e

GENESIS_ARG="--genesis-json /genesis.json"
if [ -d "/data/blocks" ]; then
  GENESIS_ARG=""
fi

SIGNATURE_ARG=""
if ! [ -z "$SIGNATURE_PROVIDER_PATH" ]; then
  SIGNATURE_ARG="--signature-provider $(cat $SIGNATURE_PROVIDER_PATH)"
fi

exec nodeos --config /config.ini --data-dir /data $SIGNATURE_ARG $GENESIS_ARG $NODEOS_ARGS
