# Car expenses virtual docker environment

## Contents
This repository contains the docker files, needed to run the application, as well as the application itself. Database is not included and should be imported on the first run.

Currently it consists of three containers:
#### expenses_web
A ubuntu based container with installed apache. The 'web' directory, containing the application is mounted in the webroot. Should be accessed via localhost:80
#### expenses_db
A mysql:5.7 based container with the DB installed. The 'db' directory is mounted in /var/lib/mysql and it should contain all the database files
#### phpmyadmin
phpmyadmin - should be accessed via localhost:8080

## Usage
Clone the repository on a machine with docker and docker-compose installed and the only thing you need to do is
docker-compose up -d

To stop:
docker-compose down