# my nginx and php 
this is the php development environment just for php developer, the php version will keep latest and support common php extensions 

#### Supported php extendsions
 core,date,libxml,openssl,pcre,sqlite3,zlib,ctype,curl,dom,fileinfo,filter,ftp,hash,iconv,json,mbstring,spl,pdo,pdo_sqlite,session,posix,readline,reflection,standard,simplexml,phar,tokenizer,xml,xmlreader,xmlwriter,mysqlnd,cgi-fcgi,amqp,apcu,bcmath,calendar,exif,gd,geoip,gettext,gmp,imagick,imap,inotify,intl,mongodb,mysqli,odbc,pcntl,pdo_mysql,pdo_odbc,pdo_pgsql,rdkafka,redis,shmop,soap,sockets,sodium,solr,swoole,sysvmsg,sysvsem,sysvshm,tideways_xhprof,xhprof,event,zip,zend opcache,xdebug

#### How to use it
```
cp .env.example  ./.env #add default env for docker-compose
cp docker-compose-example.yml ./docker-compose.yml  # #add default config for docker-compose
docker-compose up -d #change the dir to project and up it
curl 127.0.0.1:80 # verify it
```
### general info
- php version:7.4.2
- nginx version:1.17.7
- mysql version:5.7.29

## License
This project is open-sourced software licensed under the  [Apache License](LICENSE)