#!/bin/sh

set -e

# Check if the block state exists
if [ -d "/data/blocks" ]; then
  # If yes start and hard replay existing blocks
  exec nodeos --config /config.ini --data-dir /data --hard-replay
else
  # Otherwise bootstrap with genesis block
  exec nodeos --config /config.ini --data-dir /data --genesis-json /genesis.json
fi
