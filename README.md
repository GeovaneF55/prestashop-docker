# Prestashop with Docker

Easily set up and managed local Prestashop development with Docker, using MySQL and phpMyAdmin.

## Getting Started

1. [Install Docker](https://docs.docker.com/get-docker/) on your system.
2. Clone this repository.
3. Create a `.env` file by copying `.env-sample`:
```bash
cp .env-sample .env
```
4. Configure the required values in `.env`. These values will be used to set up MySQL and initialize the Prestashop database.
5. Run the following command inside the project directory:  
```bash
docker-compose up -d
```
6. Access the Prestashop installation by navigating to [http://localhost:8000](http://localhost:8000) in your browser.
7. Complete the Prestashop installation process.
8. Your website is ready for development!

> **Note:**  
> Prestashop is exposed on port `8000`, and phpMyAdmin on port `8080`. You can modify these ports in the `.env` file if they are already being used on your system.

If this is your first time running the setup, Docker will pull the necessary images from Docker Hub, which may take a few minutes. Subsequent starts will be much faster.

---

## Key Commands

- **Stop Containers:**
```bash
  docker-compose down
```
  
- **Rebuild Containers:**
```bash
  docker-compose build
```

For more information on Docker Compose, refer to the official [Docker Compose reference](https://docs.docker.com/compose/reference/).

---

## Additional Instructions

### Build Prestashop with Docker

To start Docker Desktop on Ubuntu (Noble 24.04) and build the environment:

```bash
# Start Docker Desktop
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
systemctl --user start docker-desktop

# Build and start containers
docker compose up -d

# Fix permissions for phpMyAdmin
sudo chmod -R 777 phpmyadmin/themes/
```

### Remove Docker Prestashop

To remove all Docker resources related to Prestashop:

```bash
# Stop and remove containers
docker compose down

# Remove all containers, images, and volumes
docker system prune -a

# WARNING: Be cautious when working with other projects like WordPress
sudo rm -R mysql_data/ prestashop_data/ logs/ phpmyadmin/
```
