# Docker Container Setup for WordPress, NGINX and MariaDB

This project sets up a secure environment for running WordPress using Docker containers. The setup consists of three services: NGINX, WordPress, and MariaDB. Each service runs in a dedicated container and the containers are built from Debian.

# DOCKER

Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers. Containers are isolated from each other and bundle their own software, libraries, and configuration files; they can communicate with each other through well-defined channels. Docker provides an additional layer of abstraction and automation of operating-system-level virtualization on Windows and Linux.

# Docker Compose
Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to define the services, networks, and volumes for your application in a single file, then start and stop all services from this configuration file with a single command. It simplifies the process of setting up and managing the containers for your application, making it easier to develop and test applications in a consistent and reproducible environment. Docker Compose is particularly useful for setting up and managing complex applications that consist of multiple microservices.

## NGINX
NGINX is a web server software designed for high performance and low memory usage. It can be used as a reverse proxy, load balancer, and HTTP cache. NGINX is also widely used as a software component in web application delivery and can be deployed in a variety of configurations to meet different needs.

## MariaDB
MariaDB is a free, open-source [relational database](https://medium.com/practicum-bootcamp/mysql-the-queen-of-databases-4379ab81da8f#:~:text=MySQL%20is%20a%20relational%20database,find%20the%20information%20you%20need). management system (RDBMS) that is widely used as a drop-in replacement for the MySQL database. It was created as a community-driven alternative to MySQL, after concerns arose over its acquisition by Oracle Corporation. MariaDB aims to maintain high compatibility with MySQL, ensuring a drop-in replacement capability. MariaDB includes some additional features and improvements over MySQL, making it a popular choice for many applications that require a robust and scalable RDBMS.

## WordPress
WordPress is a free and open-source content management system ([CMS](https://kinsta.com/knowledgebase/content-management-system/)) based on PHP and MySQL. It is the most popular website platform in the world, used by millions of individuals and businesses to create a variety of websites, from simple blogs to complex e-commerce sites. WordPress is easy to use and customize, with a large library of themes and plugins available to extend its functionality. It is also highly extensible, allowing developers to add custom features and functions to sites built on the platform. WordPress is known for its simplicity, versatility, and scalability, making it a popular choice for both small and large websites.





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

5. Access WordPress in your browser at https://localhost (Don't forget to change the DOMAIN_NAME in the .env file)

## Configuration

. NGINX is configured to use TLSv1.3 only
. WordPress and php-fpm are installed and configured in a separate container without NGINX
. MariaDB is installed in a separate container without NGINX
. Volumes are created for the WordPress database and website files
. A Docker network is established to connect the containers

## Contributing

Feel free to submit a pull request or raise an issue if you face any problems with the setup.
