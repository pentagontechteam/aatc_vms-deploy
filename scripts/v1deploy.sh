#!/bin/bash
set -e

IMAGE="pentagontech/vms-app:latest"
CONTAINER="vms-app"

echo "[INFO] Pulling latest image..."
docker pull $IMAGE

echo "[INFO] Stopping old container..."
docker rm -f $CONTAINER || true

echo "[INFO] Starting new container..."
docker run -d \
  --name $CONTAINER \
  -p 8000:80 \
  --restart unless-stopped \
  $IMAGE

echo "[SUCCESS] Deployment complete! App running on port 8000"
