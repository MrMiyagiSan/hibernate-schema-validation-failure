#!/bin/bash

set -eu

./init.sh &

gcloud emulators spanner start --host-port=0.0.0.0:9010 --rest-port=9020
