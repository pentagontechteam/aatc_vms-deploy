#!/bin/bash
set -e

echo "[INFO] Updating system..."
sudo dnf update -y

echo "[INFO] Installing required tools..."
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2

echo "[INFO] Adding Docker repository..."
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "[INFO] Installing Docker..."
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "[INFO] Enabling and starting Docker..."
sudo systemctl enable docker
sudo systemctl start docker

echo "[INFO] Verifying Docker installation..."
docker --version
docker compose version
