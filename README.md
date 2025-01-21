![alt text](https://github.com/TalalMiftah/INCEPTION/blob/main/images/Inception1.png?raw=true)
# Inception
## Project Overview
This project focuses on system administration using Docker to create and configure a small infrastructure composed of different services. The entire setup must be done within a virtual machine using Docker Compose.
## Infrastructure Components
### Services
- NGINX: Web server with TLSv1.2/TLSv1.3 configuration
- WordPress + php-fpm: Content Management System
- MariaDB: Database server
- Docker Network: For container communication
### Storage
- Volume 1: maiadb database
- Volume 2: WordPress website files
### Project Structure
```bash
.
├── Makefile
├── secrets/
│   ├── credentials.txt
│   ├── db_password.txt
│   └── db_root_password.txt
└── srcs/
    ├── docker-compose.yml
    ├── .env
    └── requirements/
        ├── mariadb/
        │   ├── conf/
        │   ├── tools/
        │   ├── Dockerfile
        │   └── .dockerignore
        ├── nginx/
        │   ├── conf/
        │   ├── tools/
        │   ├── Dockerfile
        │   └── .dockerignore
        └── wordpress/
            ├── conf/
            ├── tools/
            ├── Dockerfile
            └── .dockerignore
```
