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


RUN rm /tmp/extensions -rf
RUN docker-php-ext-install sysvshm sysvsem sysvmsg  shmop  gettext sockets calendar bcmath exif  mbstring mysqli pdo_mysql pcntl zip bz2 wddx xmlrpc xsl soap intl gd
WORKDIR /www
