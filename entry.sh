#!/bin/bash

set -ue

/usr/local/monero/monerod --testnet --config-file /opt/monero/monerod.conf & /usr/local/monero/monero-wallet-rpc --testnet --rpc-bind-port 18081 --rpc-login username:password --log-level 4 --wallet-file /opt/monero/testnet-wallet --password 21belair --confirm-external-bind

exec "$@"