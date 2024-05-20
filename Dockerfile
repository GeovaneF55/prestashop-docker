# GET PRESTASHOP SPECIFIC VERSION
FROM prestashop/prestashop:latest
# FROM prestashop/prestashop:1.7.8

# GET PRESTASHOP SPECIFIC PHP VERSION
# FROM prestashop/prestashop:8.0.4-8.1
# FROM prestashop/prestashop:8.0-7.4

# GET PRESTASHOP USING APACHE OR FPM
# FROM prestashop/prestashop:8.0.4-8.1-apache
# FROM prestashop/prestashop:8.0.4-8.1-fpm

# INSTALL PHP EXTENSIONS
RUN docker-php-ext-install mysqli pdo pdo_mysql

# ENABLE PHP EXTENSIONS
RUN docker-php-ext-enable mysqli pdo pdo_mysql
