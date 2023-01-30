# Docker Container Setup for WordPress, NGINX and MariaDB

This project sets up a secure environment for running WordPress using Docker containers. The setup consists of three services: NGINX, WordPress, and MariaDB. Each service runs in a dedicated container and the containers are built from Debian.

## Prerequisites

Docker and Docker Compose must be installed on your system

## Usage

1. Clone the repository:

```bash
git clone https://github.com/mohanor/inception.git
```

2. Change into the project directory:
```bash
cd inception
```

3. Build the Docker images

```bash
make build
```

4. Start the containers:
```bash
make start
```

5. Access WordPress in your browser at https://localhost (in my case : matef.42.fr)

## Configuration

. NGINX is configured to use TLSv1.3 only
. WordPress and php-fpm are installed and configured in a separate container without NGINX
. MariaDB is installed in a separate container without NGINX
. Volumes are created for the WordPress database and website files
. A Docker network is established to connect the containers

## Contributing

Feel free to submit a pull request or raise an issue if you face any problems with the setup.
