# USANDO A IMAGEM BASE DO PHP COM APACHE
FROM php:8.2-apache

# INSTALANDO EXTENSÕES PHP NECESSÁRIAS PARA O MYSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql pdo_mysql mysqli

# COPIA OS ARQUIVOS PARA O /var/www/html
COPY ./crud /var/www/html
