FROM php:7.4.1-fpm-alpine3.11

WORKDIR /www

#add git
RUN apk add git

#add extension tideways_xhprof
#RUN wget 'https://github.com/shenzhe/php-xhprof-extension/archive/master.tar.gz' \
#        && mkdir -p  /usr/src/php/ext/tideways_xhprof  \
#        && tar -xvf master.tar.gz -C  /usr/src/php/ext/tideways_xhprof  --strip 1 	\
#        && docker-php-ext-install tideways_xhprof \
#        && docker-php-ext-enable tideways_xhprof
#
##add extension xhprof for php 7
#RUN  git clone https://github.com/longxinH/xhprof.git ./xhprof \
#    && cd ./xhprof/extension/ \
#    && phpize \
#    && ./configure --with-php-config=/usr/local/bin/php-config \ls
#    && make && make install \
#    && cd /usr/local/etc/php/conf.d \
#    && mkdir /www/xhprof_data  -p \
#    && touch docker-php-ext-xhprof.ini \
#    && echo "extension = xhprof.so" >> docker-php-ext-xhprof.ini \
#    && echo "xhprof.output_dir = /www/xhprof_data" >> docker-php-ext-xhprof.ini

# add graphviz for xhprof
RUN  apk add --update --no-cache \
               graphviz \
               ttf-freefont

