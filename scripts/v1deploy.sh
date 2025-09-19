# #!/bin/bash
# set -e

# IMAGE="pentagontech/vms-app:v0.3.0"
# CONTAINER="vms-app"

# echo "[INFO] Pulling latest image..."
# docker pull $IMAGE

# echo "[INFO] Stopping old container..."
# docker rm -f $CONTAINER || true

# echo "[INFO] Starting new container..."
# docker run -d \
#   --name $CONTAINER \
#   -p 8000:80 \
#   --restart unless-stopped \
#   $IMAGE

# echo "[SUCCESS] Deployment complete! App running on port 8000"

#!/bin/bash
# set -e

# echo "[INFO] Pulling latest images..."
# docker compose pull

# echo "[INFO] Restarting services..."
# docker compose down
# docker compose up -d

# echo "[SUCCESS] Deployment complete! App + MySQL running."


#!/bin/bash
set -e

echo "[INFO] Pulling latest images..."
docker compose pull

echo "[INFO] Stopping old containers..."
docker compose down

echo "[INFO] Starting services..."
docker compose up -d

echo "[SUCCESS] Deployment complete! App + MySQL running."

