​This Ansible playbook automates the setup of Docker and deployment of a project on target servers, here is explanation of each step in playbook:
1. Install Docker Dependencies: Installs necessary packages such as apt-transport-https, ca-certificates, curl, gnupg-agent, and software-properties-common to allow Docker installation.
2. Add Docker GPG Key: Adds Docker's official GPG key to ensure the authenticity of the packages.
3. Add Docker Repository: Adds Docker's official repository to the system APT sources for package retrieval
4. Install Docker Engine and Related Packages: Installs Docker Engine, Buildx plugin, Compose plugin (to use Docker Compose in next task), and python3-pip.
5. Install Python Docker SDK: Installs the python3-docker package to enable Ansible to interact with Docker.
6. Clone Repository: Clones the specified Git repository to the /home/ubuntu/repo directory on the specified EC2 target server.
7. Build Docker Image: Builds a Docker image named test-nginx using the Dockerfile located in /home/ubuntu/repo/NGINX.
8. Start Docker Compose Services: Deploys and starts services (my custom NGINX image) in the docker-compose.yml file located in /home/ubuntu/repo/NGINX.
