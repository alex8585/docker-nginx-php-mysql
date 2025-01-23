#  "mysqli-php"
#  "php:8.2-fpm"
#  "php:7.4-fpm-alpine"
#  'php:8.2-fpm-alpine'
FROM php:8.2-fpm

# RUN apt-get update && apt-get install -y \
#     libzip-dev \
#     unzip \
#     && docker-php-ext-install zip

RUN docker-php-ext-install mysqli

WORKDIR /var/www/html

CMD ["php-fpm"]

