# Docker Task 3
# Custom Nginx Docker Deployment

## Description
This repository contains the configuration to build a custom Nginx Docker image and deploy it using Docker Compose. The deployment is designed to run on an AWS EC2 instance and utilizes a volume bind mount mapping to `/var/opt/nginx` inside the container.

## Tech Stack
- AWS EC2
- Docker
- Docker Compose

## Repository Contents
- `Dockerfile`: Instructions for building the custom Nginx image.
- `docker-compose.yml`: Defines the web service, port mappings (80:80), and the specific `/var/opt/nginx` volume bind mount.
- `index.html`: Custom web page served by the Nginx container.
- Verification Screenshots: CLI push success, Docker Hub registry confirmation, and container inspection showing the bind mount.

## Deployment Steps

**1. Prepare the Host Directory**
Create the required directory on the EC2 host for the bind mount:
```bash
sudo mkdir -p /var/opt/nginx

```

**2. Build and Push the Docker Image**
Authenticate with Docker Hub, then build and push the image:

```bash
docker build -t <your-dockerhub-username>/custom-nginx:latest .
docker push <your-dockerhub-username>/custom-nginx:latest

```

**3. Run the Container**
Deploy the application using Docker Compose in detached mode:

```bash
docker compose up -d

```

**4. Verification**

* **Verify Bind Mount:**
```bash
docker inspect <container_name> | grep -A 10 "Mounts"

```


* **Access Application:** Open a web browser and navigate to `http://<EC2_PUBLIC_IP>` to view the deployed application.

```

Replace `<your-dockerhub-username>` and `<container_name>` with your actual details before committing this `README.md` file to your repository.

```
