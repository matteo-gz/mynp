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
RUN  mkdir -p  /usr/src/php/ext/tideways_xhprof\
   && tar -xvf tideways_xhprof.tar.gz -C  /usr/src/php/ext/tideways_xhprof  --strip 1 	\
   && docker-php-ext-install tideways_xhprof

#add extension xhprof for php 7
RUN  mkdir -p  /usr/src/php/ext/xhprof\
   && tar -xvf xhprof.tar.gz -C  /usr/src/php/ext/xhprof  --strip 1 	\
   && cd /usr/src/php/ext/xhprof/extension/ \
   && docker-php-ext-install xhprof

#    && echo "xhprof.output_dir = /www/xhprof_data" >> docker-php-ext-xhprof.ini

WORKDIR /www