#FROM php:7.4.8-cli-alpine3.12
FROM php:7.4.8-fpm-alpine3.11
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
WORKDIR /tmp/extensions
COPY ./version/v4.5.2.tar.gz /tmp/extensions/v4.5.2.tar.gz
RUN apk add libstdc++
RUN docker-php-source extract;\
mkdir -p  /usr/src/php/ext/swoole;\
tar xzvf /tmp/extensions/v4.5.2.tar.gz  -C  /usr/src/php/ext/swoole  --strip 1;\
rm /tmp/extensions/v4.5.2.tar.gz -rf;\
docker-php-ext-install swoole;\
docker-php-ext-enable swoole;\
docker-php-source delete
RUN rm /tmp/extensions -rf
WORKDIR /www