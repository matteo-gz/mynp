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
#add swoole
RUN  mkdir -p  /usr/src/php/ext/swoole\
   && tar -xvf swoole-4.4.14.tgz -C  /usr/src/php/ext/swoole  --strip 1 	\
   && docker-php-ext-install swoole \
   && docker-php-ext-enable swoole

# add redis
RUN  mkdir -p  /usr/src/php/ext/redis\
   && tar -xvf redis-5.1.1.tgz -C  /usr/src/php/ext/redis  --strip 1 	\
   && docker-php-ext-install redis \
   && docker-php-ext-enable redis

# for zip rabbitmq kafak
RUN apk add --no-cache	libzip-dev 		rabbitmq-c-dev 		librdkafka-dev

#add kafka
RUN  mkdir -p  /usr/src/php/ext/rdkafka\
   && tar -xvf rdkafka-4.0.2.tgz -C  /usr/src/php/ext/rdkafka  --strip 1 	\
   && docker-php-ext-install rdkafka \
   && docker-php-ext-enable rdkafka
# add mq
RUN  mkdir -p  /usr/src/php/ext/amqp\
   && tar -xvf amqp-1.9.4.tgz -C  /usr/src/php/ext/amqp  --strip 1 	\
   && docker-php-ext-install amqp \
   && docker-php-ext-enable amqp
# add zip
RUN docker-php-ext-install zip

# add solr
RUN apk add --no-cache --virtua libsodium-dev curl-dev libxml2-dev 
RUN  mkdir -p  /usr/src/php/ext/solr\
  && tar -xvf solr-2.5.0.tgz -C  /usr/src/php/ext/solr  --strip 1 	\
  && docker-php-ext-install solr \
   && docker-php-ext-enable solr

#add pdo odbc todo
RUN  mkdir -p  /usr/src/php/ext/PDO_ODBC\
  && tar -xvf PDO_ODBC-1.0.1.tgz -C  /usr/src/php/ext/PDO_ODBC  --strip 1 	\
  && docker-php-ext-install PDO_ODBC \
   && docker-php-ext-enable PDO_ODBC

#add pdo pgsql todo
RUN  mkdir -p  /usr/src/php/ext/pgsql\
  && tar -xvf PDO_PGSQL-1.0.2.tgz -C  /usr/src/php/ext/pgsql  --strip 1 	\
  && docker-php-ext-install pgsql \
   && docker-php-ext-enable pgsql
#add apcu todo
RUN  mkdir -p  /usr/src/php/ext/apcu\
  && tar -xvf apcu-5.1.18.tgz -C  /usr/src/php/ext/apcu  --strip 1 	\
  && docker-php-ext-install apcu \
   && docker-php-ext-enable apcu

#add event todo
RUN  mkdir -p  /usr/src/php/ext/event\
  && tar -xvf event-2.5.3.tgz -C  /usr/src/php/ext/event  --strip 1 	\
  && docker-php-ext-install event \
   && docker-php-ext-enable event

#add geoip todo
RUN  mkdir -p  /usr/src/php/ext/geoip\
  && tar -xvf geoip-1.1.1.tgz -C  /usr/src/php/ext/geoip  --strip 1 	\
  && docker-php-ext-install geoip \
   && docker-php-ext-enable geoip
#add imagick todo
RUN  mkdir -p  /usr/src/php/ext/imagick\
  && tar -xvf imagick-3.4.4.tgz -C  /usr/src/php/ext/imagick  --strip 1 	\
  && docker-php-ext-install imagick \
   && docker-php-ext-enable imagick
#add inotify todo
RUN  mkdir -p  /usr/src/php/ext/inotify\
  && tar -xvf inotify-2.0.0.tgz -C  /usr/src/php/ext/inotify  --strip 1 	\
  && docker-php-ext-install inotify \
   && docker-php-ext-enable inotify
#add mongodb todo
RUN  mkdir -p  /usr/src/php/ext/mongodb\
  && tar -xvf mongodb-1.6.1.tgz -C  /usr/src/php/ext/mongodb  --strip 1 	\
  && docker-php-ext-install mongodb \
   && docker-php-ext-enable mongodb
#add zendopcache todo
RUN  mkdir -p  /usr/src/php/ext/zendopcache\
  && tar -xvf zendopcache-7.0.5.tgz -C  /usr/src/php/ext/zendopcache  --strip 1 	\
  && docker-php-ext-install zendopcache \
   && docker-php-ext-enable zendopcache
#add zookeeper todo
RUN  mkdir -p  /usr/src/php/ext/zookeeper\
  && tar -xvf zookeeper-0.7.2.tgz -C  /usr/src/php/ext/zookeeper  --strip 1 	\
  && docker-php-ext-install zookeeper \
   && docker-php-ext-enable zookeeper

#clear tmp
RUN rm /tmp/extensions -rf

WORKDIR /www
