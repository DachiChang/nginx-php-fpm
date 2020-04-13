FROM ubuntu:18.04

LABEL maintainer="Dachi Chang <dachichang@kklab.com>"
# config system
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# install the needed packages
RUN apt update && apt install -y \
    nginx=1.14.* \
    php7.2-fpm \
    php7.2-mysql \
 && rm -rf /var/lib/apt/lists/*
# config nginx
RUN mkdir -p /etc/nginx/ssl
COPY nginx-config/default_server /etc/nginx/sites-available/default
# setup the applicatoin environment
WORKDIR /app
# export network port for access
EXPOSE 80 443
# start php-fpm service and binding nginx as the foreground process
CMD service php7.2-fpm start && nginx -g "daemon off;"
