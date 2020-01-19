FROM php:7.4.1-fpm-alpine3.11

#add git
RUN apk add git

# add graphviz for xhprof
RUN  apk add --update --no-cache \
               graphviz \
               ttf-freefont

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

# add zip
RUN apk add --no-cache	libzip-dev
RUN docker-php-ext-install zip

WORKDIR /tmp/extensions

#add extension tideways_xhprof
# wget 'https://github.com/shenzhe/php-xhprof-extension/archive/master.tar.gz'
COPY ./extension/tideways_xhprof.tar.gz /tmp/extensions/tideways_xhprof.tar.gz
RUN  mkdir -p  /usr/src/php/ext/tideways_xhprof\
   && tar -xvf tideways_xhprof.tar.gz -C  /usr/src/php/ext/tideways_xhprof  --strip 1 	\
   && docker-php-ext-install tideways_xhprof

#add extension xhprof for php 7
# wget 'https://github.com/longxinH/xhprof/archive/v2.1.3.tar.gz'
COPY ./extension/xhprof.tar.gz /tmp/extensions/xhprof.tar.gz
RUN  mkdir -p  /usr/src/php/ext/xhprof\
   && tar -xvf xhprof.tar.gz -C  /usr/src/php/ext/xhprof  --strip 1 	\
   && mv /usr/src/php/ext/xhprof/extension/*   /usr/src/php/ext/xhprof/ \ 
   && docker-php-ext-install xhprof


#add swoole
COPY ./extension/swoole-4.4.14.tgz /tmp/extensions/swoole-4.4.14.tgz
RUN  mkdir -p  /usr/src/php/ext/swoole\
   && tar -xvf swoole-4.4.14.tgz -C  /usr/src/php/ext/swoole  --strip 1 	\
   && docker-php-ext-install swoole \
   && docker-php-ext-enable swoole

# add redis
COPY ./extension/redis-5.1.1.tgz /tmp/extensions/redis-5.1.1.tgz
RUN  mkdir -p  /usr/src/php/ext/redis\
   && tar -xvf redis-5.1.1.tgz -C  /usr/src/php/ext/redis  --strip 1 	\
   && docker-php-ext-install redis \
   && docker-php-ext-enable redis

#add kafka
COPY ./extension/rdkafka-4.0.2.tgz /tmp/extensions/rdkafka-4.0.2.tgz
RUN  apk add --no-cache	librdkafka-dev
RUN  mkdir -p  /usr/src/php/ext/rdkafka\
   && tar -xvf rdkafka-4.0.2.tgz -C  /usr/src/php/ext/rdkafka  --strip 1 	\
   && docker-php-ext-install rdkafka \
   && docker-php-ext-enable rdkafka
# add mq
COPY ./extension/amqp-1.9.4.tgz /tmp/extensions/amqp-1.9.4.tgz
RUN  apk add --no-cache	rabbitmq-c-dev
RUN  mkdir -p  /usr/src/php/ext/amqp\
   && tar -xvf amqp-1.9.4.tgz -C  /usr/src/php/ext/amqp  --strip 1 	\
   && docker-php-ext-install amqp \
   && docker-php-ext-enable amqp

# add solr
RUN apk add --no-cache --virtua libsodium-dev curl-dev libxml2-dev
COPY ./extension/solr-2.5.0.tgz /tmp/extensions/solr-2.5.0.tgz
RUN  mkdir -p  /usr/src/php/ext/solr\
  && tar -xvf solr-2.5.0.tgz -C  /usr/src/php/ext/solr  --strip 1 	\
  && docker-php-ext-install solr \
   && docker-php-ext-enable solr

#add pdo pgsql
RUN set -ex \
  && apk --no-cache add \
    postgresql-dev

RUN docker-php-ext-install pdo pdo_pgsql

#add apcu
COPY ./extension/apcu-5.1.18.tgz /tmp/extensions/apcu-5.1.18.tgz
RUN  mkdir -p  /usr/src/php/ext/apcu\
  && tar -xvf apcu-5.1.18.tgz -C  /usr/src/php/ext/apcu  --strip 1 	\
  && docker-php-ext-install apcu \
   && docker-php-ext-enable apcu

#add event
COPY ./extension/event-2.5.3.tgz /tmp/extensions/event-2.5.3.tgz
RUN  mkdir -p  /usr/src/php/ext/event\
  && tar -xvf event-2.5.3.tgz -C  /usr/src/php/ext/event  --strip 1 	\
  && apk add  libevent-dev \
  && docker-php-ext-install event \
   && docker-php-ext-enable event

#add geoip
COPY ./extension/geoip-1.1.1.tgz /tmp/extensions/geoip-1.1.1.tgz
RUN  mkdir -p  /usr/src/php/ext/geoip\
  && tar -xvf geoip-1.1.1.tgz -C  /usr/src/php/ext/geoip  --strip 1 	\
  && apk add geoip geoip-dev \
  && docker-php-ext-install geoip \
   && docker-php-ext-enable geoip
#add imagick
COPY ./extension/imagick-3.4.4.tgz /tmp/extensions/imagick-3.4.4.tgz
RUN  mkdir -p  /usr/src/php/ext/imagick\
  && tar -xvf imagick-3.4.4.tgz -C  /usr/src/php/ext/imagick  --strip 1 	\
 && apk add imagemagick-dev \
  && docker-php-ext-install imagick \
   && docker-php-ext-enable imagick
#add inotify
COPY ./extension/inotify-2.0.0.tgz /tmp/extensions/inotify-2.0.0.tgz
RUN  mkdir -p  /usr/src/php/ext/inotify\
  && tar -xvf inotify-2.0.0.tgz -C  /usr/src/php/ext/inotify  --strip 1 	\
  && docker-php-ext-install inotify \
   && docker-php-ext-enable inotify
#add mongodb
COPY ./extension/mongodb-1.6.1.tgz /tmp/extensions/mongodb-1.6.1.tgz
RUN  mkdir -p  /usr/src/php/ext/mongodb\
  && tar -xvf mongodb-1.6.1.tgz -C  /usr/src/php/ext/mongodb  --strip 1 \
  && docker-php-ext-install mongodb \
   && docker-php-ext-enable mongodb
#add zendopcache
RUN docker-php-ext-install opcache

# add pdo odbc
RUN set -ex; \
docker-php-source extract; \
{ \
     echo '# https://github.com/docker-library/php/issues/103#issuecomment-271413933'; \
     echo 'AC_DEFUN([PHP_ALWAYS_SHARED],[])dnl'; \
     echo; \
     cat /usr/src/php/ext/odbc/config.m4; \
} > temp.m4; \
mv temp.m4 /usr/src/php/ext/odbc/config.m4; \
apk update; \
apk add --no-cache unixodbc-dev; \
rm -rf /var/lib/apt/lists/*; \
docker-php-ext-configure odbc --with-unixODBC=shared,/usr; \
docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr; \
docker-php-ext-install odbc pdo_odbc; \
docker-php-source delete

RUN apk add  imap-dev \
 && docker-php-ext-install imap

RUN apk add gmp-dev\
 &&  docker-php-ext-install gmp

RUN docker-php-ext-install soap

RUN apk add --no-cache icu-dev\
 && docker-php-ext-install intl

 #gettext  extension (Alpine Linux)
RUN apk add --no-cache gettext-dev\
 &&  docker-php-ext-install gettext
#RUN docker-php-ext-enable --ini-name docker-php-ext-zevent.ini event
RUN mv /usr/local/etc/php/conf.d/docker-php-ext-event.ini  /usr/local/etc/php/conf.d/docker-php-ext-zevent.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#
#RUN  apk add freetype-dev
#RUN   apk add jpeg-dev
#RUN apk add zlib-dev
#RUN  apk add libpng-dev \
#  && docker-php-ext-install gd

RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype=/usr/include/ \
    --with-png=/usr/include/ \
    --with-jpeg=/usr/include/ && \
  NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
  docker-php-ext-install -j${NPROC} gd && \
  apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev
#clear tmp
RUN rm /tmp/extensions -rf

WORKDIR /www
