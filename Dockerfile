FROM php:7.4-fpm-alpine

RUN apk update && apk add bash && apk add curl && curl -s https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && alias composer='php /usr/local/bin/composer' \
 && docker-php-ext-install pdo_mysql bcmath && composer global require laravel/installer

# composer create-project --prefer-dist laravel/laravel metube
#RUN echo "[Date]" >> /usr/local/etc/php/conf.d/php-sendmail.ini \     && echo "date.timezone = Europe/Amsterdam" >> /usr/local/etc/php/conf.d/php-sendmail.ini