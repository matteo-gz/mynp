# my nginx and php 
this is the php development environment just for php developer, the php version will keep latest and support common php extensions 

#### Supported php extendsions
amqp
apcu
bcmath
calendar
Core
ctype
curl
date
dom
event
exif
fileinfo
filter
ftp
gd
geoip
gettext
gmp
hash
iconv
imagick
imap
inotify
intl
json
libxml
mbstring
mongodb
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
Phar
posix
rdkafka
readline
redis
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
solr
SPL
sqlite3
standard
swoole
sysvmsg
sysvsem
sysvshm
tideways_xhprof
tokenizer
xdebug
xhprof
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib

#### How to use it
```
cp .env.example  ./.env #add default env for docker-compose
cp docker-compose-example.yml ./docker-compose.yml  # #add default config for docker-compose
docker-compose up -d #change the dir to project and up it
curl 127.0.0.1:80 # verify it
```
### general info
- php version:7.4.8
- nginx version:1.17.7
- mysql version:5.7.29

#### helper
- localhost:81 //portainer
- localhost:19999 //netdata 

### Docs
- https://github.com/docker-library/php
- https://docs.docker.com/compose/compose-file/ 
- https://docs.docker.com/engine/reference/builder/
- [the compiled docker image of php](https://hub.docker.com/r/yazi/phpx)
- [install docker for centos ](doc/installdocker.md)
## License
This project is open-sourced software licensed under the  [Apache License](LICENSE)