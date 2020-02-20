FROM php:7.4-fpm-alpine
RUN apk add bash mysql-client \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www

# Instalar composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN rm -Rf /var/www/html
COPY . /var/www
RUN ln -s public html

EXPOSE 9000
ENTRYPOINT ["php-fpm"]
