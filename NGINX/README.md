This folder contains next files:
1. nginx.conf configuration file sets up an Nginx server that listens on port 80 for requests directed to localhost. When a request is made to the root URL (/), Nginx serves the index.html file located in the /usr/share/nginx/html directory.
2. index.html contains simple configuration to display custom message when someone visit the site
3. Dockerfile creates a Docker image that runs Nginx with custom configurations and serves a specific index.html file. It ensures that Nginx remains active in the foreground, allowing Docker to manage the process effectively
4. docker-compose.yml starts my custom docker image and maps local port 8080 to port 80 on the container
5. build_and_run.sh script automates the creation of a Docker image named "test-nginx" and runs a container named "test-nginx-container" from that image. The container's port 80 is mapped to port 8080 on the host, enabling access to the Nginx web server through http://localhost:8080.
