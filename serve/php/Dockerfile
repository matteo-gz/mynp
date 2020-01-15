FROM php:7.4.1-fpm-alpine3.11

#add git
RUN apk add git

# add graphviz for xhprof
RUN  apk add --update --no-cache \
               graphviz \
               ttf-freefont

COPY ./extension /tmp/extensions
WORKDIR /tmp/extensions

#add extension tideways_xhprof
# wget 'https://github.com/shenzhe/php-xhprof-extension/archive/master.tar.gz'
RUN  mkdir -p  /usr/src/php/ext/tideways_xhprof\
   && tar -xvf tideways_xhprof.tar.gz -C  /usr/src/php/ext/tideways_xhprof  --strip 1 	\
   && docker-php-ext-install tideways_xhprof

#add extension xhprof for php 7
# wget 'https://github.com/longxinH/xhprof/archive/v2.1.3.tar.gz'
RUN  mkdir -p  /usr/src/php/ext/xhprof\
   && tar -xvf xhprof.tar.gz -C  /usr/src/php/ext/xhprof  --strip 1 	\
   && mv /usr/src/php/ext/xhprof/extension/*   /usr/src/php/ext/xhprof/ \ 
   && docker-php-ext-install xhprof

RUN docker-php-ext-install sysvshm
RUN docker-php-ext-install sysvsem
RUN docker-php-ext-install sysvmsg
RUN docker-php-ext-install shmop
RUN docker-php-ext-install sockets
RUN docker-php-ext-install calendar
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install exif
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pcntl

RUN  mkdir -p  /usr/src/php/ext/swoole\
   && tar -xvf swoole-4.4.14.tgz -C  /usr/src/php/ext/swoole  --strip 1 	\
   && docker-php-ext-install swoole \
   && docker-php-ext-enable swoole

RUN  mkdir -p  /usr/src/php/ext/solr\
   && tar -xvf solr-2.5.0.tgz -C  /usr/src/php/ext/solr  --strip 1 	\
   && docker-php-ext-install solr \
   && docker-php-ext-enable solr

RUN  mkdir -p  /usr/src/php/ext/redis\
   && tar -xvf redis-5.1.1.tgz -C  /usr/src/php/ext/redis  --strip 1 	\
   && docker-php-ext-install redis \
   && docker-php-ext-enable redis

RUN  mkdir -p  /usr/src/php/ext/rdkafka\
   && tar -xvf rdkafka-4.0.2.tgz -C  /usr/src/php/ext/rdkafka  --strip 1 	\
   && docker-php-ext-install rdkafka \
   && docker-php-ext-enable rdkafka

RUN  mkdir -p  /usr/src/php/ext/amqp\
   && tar -xvf amqp-1.9.4.tgz -C  /usr/src/php/ext/amqp  --strip 1 	\
   && docker-php-ext-install amqp \
   && docker-php-ext-enable amqp

RUN rm /tmp/extensions -rf

WORKDIR /www
