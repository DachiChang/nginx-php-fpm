# nginx-php-fpm
use nginx + php-fpm to create the basic http(s) server

## how to use

 1. create new Dockerfile
 2. add layer below
    ```
    FROM dachichang/nginx-php-fpm
    COPY web_resources ./
    ```
 3. docker build -t APP_NAME:VERSION .
 4. prepare ssl certificate folder and put .crt and .key follow the structure below
    ```
    ssl/
        site.crt
        site.key
    ```
 4. docker run --rm -d -p 80:80 -p 443:443 -v PATH_TO_SSL/ssl:/etc/nginx/ssl --name CONTAINER_NAME APP_NAME:VERSION
