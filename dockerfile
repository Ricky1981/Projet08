# https://hub.docker.com/_/httpd
FROM php:7.3-apache
RUN apt-get update && \
apt-get install -qy zip libzip-dev libpng-dev && \
docker-php-ext-install zip gd pdo pdo_mysql
# && \
# docker-php-ext-install gd && \
# docker-php-ext-install pdo pdo_mysql

RUN apt-get -qy install libicu-dev && \
docker-php-ext-configure intl && \
docker-php-ext-install intl

RUN a2enmod rewrite

WORKDIR /var/www/html

COPY --chown=www-data:www-data . .

# RUN mkdir ./var/logs && chmod -R 777 ./var/logs

# RUN unzip ./prestashop_1.7.7.7.zip && \
# rm -f ./prestashop_1.7.7.7.zip

# # EXPOSE 80

# # docker build -t prestashop .
# # docker run -dit --name presta -p 8083:80 --rm prestashop
# # docker images
# # docker exec -ti presta bash

# # sudo apt install php libapache2-mod-php php-mysql

# # sudo apt install php-mbstring


