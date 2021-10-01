# Blog

Blog is a web application about Movies using the Lumen micro-framework based on Laravel.

## Pre-requisites

First, to be able to participate to this project, you'll have to install our [Makefile](https://pip.pypa.io/en/stable/) in order to have our git configuration and hooks.

```bash
make githooks
```
Also, to run to this project you need [Docker](https://docs.docker.com/) installed.


## Installation

### Setting the .env file
The project will require a .env file at root of /blog folder in order to work.
In order to have it, rename the **.env.example** file in /blog to **.env**.

Change the logs according to the logs set in the **docker-compose.yml** file.

### Starting the docker containers
Once you're done installing the git hooks and have a Docker fully functional, you can install the docker container by using the following commands:

```bash
docker compose build 
docker compose up -d
```

### Migrating the database
Once your docker containers are running, you'll need another set of command in order to finish the installation:
```bash
docker compose exec lumen composer install 
docker compose exec lumen php artisan migrate:refresh --seed
```

## Routes

```python
# returns the current movies collection stored in the database
http://localhost/
```

## License
[MIT](https://choosealicense.com/licenses/mit/)