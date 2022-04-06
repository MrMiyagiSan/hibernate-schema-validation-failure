#!/bin/bash
set -Eeuo pipefail

echo "Init emulator config"

gcloud config configuration create emulator
gcloud config set auth/disable_credentials true
gcloud config set project test_project
gcloud config set api_endpoint_overrides/spanner http://localhost:9020/

gcloud spanner instances create "test-instance" --description="Car"
gcloud spanner databases create "Car" --instance="test-instance"