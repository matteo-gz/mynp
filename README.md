```
cp .env.example  ./.env
cp docker-compose-example.yml ./docker-compose.yml 
```
https://github.com/docker-library/php/issues/857
#   docker-php-ext-enable --ini-name zz-event.ini event
# mv /usr/local/etc/php/conf.d/docker-php-ext-event.ini  /usr/local/etc/php/conf.d/docker-php-ext-zevent.in