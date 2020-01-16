```
cp .env.example  ./.env #add default env for docker-compose
cp docker-compose-example.yml ./docker-compose.yml  # #add default config for docker-compose
docker-compose up -d #change the dir to project and up it
curl 127.0.0.1:80 # verify it
```
####
https://github.com/docker-library/php/issues/857 
`# mv /usr/local/etc/php/conf.d/docker-php-ext-event.ini  /usr/local/etc/php/conf.d/docker-php-ext-zevent.ini`
