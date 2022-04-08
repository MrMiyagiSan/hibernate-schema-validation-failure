#!/bin/bash
set -Eeuo pipefail

echo "Init emulator config"

gcloud config configurations create emulator
gcloud config set auth/disable_credentials true
gcloud config set project "test-project"
gcloud config set api_endpoint_overrides/spanner http://localhost:9020/

echo "Create spanner instance and database"
gcloud spanner instances create "test-instance" --description="Car" --config=emulator-config --nodes=1
gcloud spanner databases create "car" --instance="test-instance"

echo "Init DB schema"
gcloud spanner databases ddl update "car" --instance="test-instance" --configuration=emulator --ddl-file="./car.sql"
