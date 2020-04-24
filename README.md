# Nginx-php-fpm
use nginx + php-fpm to create the basic http(s) server

## Introduce
 - Easy to publish your site/api project
 - Easy to build your owned image, only need to copy project root to docker ${WORKDIR} (/app/)
 - Easy to development your project, only need to run dachichang/nginx-php-fpm and use volume mount project root to ${WORKDIR} (/app/)

## Project prepare

 - NOTICE: nginx document root will bind ${WORKDIR}/public and use index.php as index
 - project layout (suggest)
   ```
   ./public/index.php
   ./vendor
   ./src
   ./lib
   ```

## Build Image and Run

 1. create new Dockerfile
 2. add layer below
    ```
    FROM dachichang/nginx-php-fpm
    COPY web_resources ./
    ```
 3. docker build -t APP_NAME:VERSION .
 4. docker run --rm -d -p 80:80 --name CONTAINER_NAME APP_NAME:VERSION
