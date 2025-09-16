#!/bin/bash
set -e

IMAGE="pentagontech/aatc-vms-app:latest"
CONTAINER="aatc-vms-app"
ENV_FILE="$(dirname "$0")/../.env"

if [ ! -f "$ENV_FILE" ]; then
  echo "[ERROR] .env file not found at $ENV_FILE"
  exit 1
fi

echo "[INFO] Pulling latest image..."
docker pull $IMAGE

echo "[INFO] Stopping old container..."
docker rm -f $CONTAINER || true

echo "[INFO] Starting new container..."
docker run -d \
  --name $CONTAINER \
  --env-file $ENV_FILE \
  -p 8000:80 \
  --restart unless-stopped \
  $IMAGE

echo "[SUCCESS] Deployment complete! App running on port 8000"
