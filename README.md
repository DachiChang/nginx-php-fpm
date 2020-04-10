# nginx-php-fpm
use nginx + php-fpm to build the basic http(s) server 

## how to use

 1. create new Dockerfile
 2. add layer below
    ```
    FROM dachichang/nginx-php-fpm
    COPY web_resources ./
    ```
 3. docker build -t APP_NAME:VERSION .
 4. docker run --rm -d -p 80:80 --name CONTAINER_NAME APP_NAME:VERSION
