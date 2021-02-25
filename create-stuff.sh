#!/usr/bin/env bash

terraform init -backend-config=bucket=${STATE_BUCKET} -backend-config=key=${STATE_FILE_PATH} -backend-config=region=${REGION}
terraform apply -auto-approve