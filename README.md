# AATC VMS Deployment

This repository contains deployment scripts for the **AATC Visitor Management System** (`aatc_vms`) Docker image.

The goal is to provide a lightweight way to deploy and manage the application on a target server (RHEL/Rocky Linux).

---

## 📦 Repository Structure

scripts/install_docker.sh # Install Docker & Docker Compose
scripts/deploy.sh # Pull latest image and run it
scripts/manage.sh # Start/stop/restart/logs/shell helper
.env # Environment variables (NOT included in repo)

---

## 🚀 Deployment Steps

### 1. Clone this repository on the server
```bash
git clone https://github.com/<your-org>/aatc_vms-deploy.git
cd aatc_vms-deploy
2. Install Docker

chmod +x scripts/install_docker.sh
./scripts/install_docker.sh
3. Provide Environment File
Manually copy your .env file to the root of this repo:


aatc_vms-deploy/
│
├── .env
├── scripts/
4. Deploy the Application

chmod +x scripts/deploy.sh
./scripts/deploy.sh
5. Manage the Container

./scripts/manage.sh start     # Start container
./scripts/manage.sh stop      # Stop container
./scripts/manage.sh restart   # Restart container
./scripts/manage.sh remove    # Remove container
./scripts/manage.sh logs      # Tail logs
./scripts/manage.sh shell     # Access container shell
🔧 Notes
The .env file is required but never committed to GitHub (it’s gitignored).

The app is served on port 8000 → accessible at http://<server-ip>:8000.

On redeploy, deploy.sh always pulls the latest image from Docker Hub.

📌 Requirements
RHEL 10 / Rocky Linux 9+

Docker Hub access (if image is private, run docker login before deploying)


---

