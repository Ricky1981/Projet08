# https://hub.docker.com/_/httpd
FROM php:7.3-apache
RUN apt-get update && \
apt-get install -qy zip libzip-dev libpng-dev && \
docker-php-ext-install zip gd pdo pdo_mysql

RUN apt-get -qy install libicu-dev && \
docker-php-ext-configure intl && \
docker-php-ext-install intl

RUN a2enmod rewrite

# Je me place dans le repertoire /var/www/html du conteneur
WORKDIR /var/www/html

# Je copie mon code placé dans la racine dans mon "WORKDIR"
COPY . .

# Je modifie le fichier parameters.php du conteneur afin qu'il contienne l'IP que je souhaite
RUN sed -i 's/\(192\.168\.10\.8\)/172\.18\.0\.3/' app/config/parameters.php




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



