# Solo Orbit Technologies

## Overview
This repository contains all the necessary files to run and deploy the Solo Orbit Technologies website, designed with Nginx in a Dockerized environment. The website features static HTML, CSS, and images that present Solo Orbit Technologies' branding and contact information.

## Project Structure
```
├── Dockerfile
├── README.md
├── Solo-Orbit-CHMOD.sh
├── bashcode
├── docker-compose.yml
├── index.html
├── run_solo_orbit.sh
├── shutdown_and_remove.sh
├── solo-img-114x114.png
├── solo-img-120x120.png
├── solo-img-1290x2796.jpeg
├── solo-img-40x40-jpeg.png
├── solo-img-60x60.png
├── solo-img-87x87.png
├── solo-img.jpeg
├── solo-img.png
├── structure.md
├── tree-solo.txt
└── variables.sh
```

## Key Files

- **Dockerfile**: Defines the Nginx container and specifies how the website should be served.
- **docker-compose.yml**: Simplifies container orchestration by defining services, ports, and volumes.
- **index.html**: The main webpage with a responsive design and company branding.
- **solo-img.png**: Primary image used on the website.
- **run_solo_orbit.sh**: Script to start the application.
- **shutdown_and_remove.sh**: Script to stop and remove the application.

## Prerequisites

- **Docker installed on your system.** [Install Docker](https://docs.docker.com/get-docker/)
- **Docker Compose installed.** [Install Docker Compose](https://docs.docker.com/compose/install/)
- **AWS Lightsail** or a similar hosting platform (for deployment).

## Running Locally

Follow these steps to run the application locally:

1. Clone the repository:</br>
      [git clone](https://github.com/dwhjr/solo-orbit.git)
   ```bash
   cd solo-orbit
   ```

3. Build and start the application using Docker Compose:
   ```bash
   docker-compose up --build
   ```

4. Access the website at `http://localhost:8080`.

5. To stop the application:
   ```bash
   docker-compose down
   ```

## Deployment to AWS Lightsail

### Step 1: Configure AWS Lightsail Instance

1. Launch a Linux/Ubuntu instance in AWS Lightsail.
2. Open the Lightsail terminal and install Docker and Docker Compose:
   ```bash
   sudo apt update
   sudo apt install docker.io -y
   sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose
   ```

### Step 2: Upload Files

1. Use SCP or SFTP to upload the project files to the Lightsail instance:
   ```bash
   scp -r /path/to/project ubuntu@<lightsail-ip>:~/solo-orbit
   ```

2. SSH into the Lightsail instance:
   ```bash
   ssh ubuntu@<lightsail-ip>
   ```

3. Navigate to the project directory:
   ```bash
   cd ~/solo-orbit
   ```

### Step 3: Build and Run the Application

1. Build and start the application:
   ```bash
   docker-compose up --build -d
   ```

2. Verify the application is running by accessing `http://<lightsail-ip>:8080` in a browser.

3. (Optional) Ensure the application restarts on reboot:
   ```bash
   sudo systemctl enable docker
   ```

### Step 4: Set Up a Custom Domain (Optional)

1. Configure your domain's DNS settings to point to the Lightsail instance's public IP.
2. Update the Nginx configuration in the Dockerfile or index.html if necessary.

## Scripts

- **Solo-Orbit-CHMOD.sh**: Use for setting file permissions.
- **run_solo_orbit.sh**: Simplifies starting the container.
- **shutdown_and_remove.sh**: Automates stopping and removing the container.

## License

&copy; 2025 Solo Orbit Technologies. All rights reserved.

## Acknowledgments and Parting Thoughts

- Be Kind
- Pals
- By God Woodrow, you just never get the point do you? It ain't dying I am talking about, it's living.
