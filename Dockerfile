# Use a imagem oficial do PHP com Apache
FROM php:7.3-apache

# Instale extensões adicionais do PHP, se necessário
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copie o código-fonte da sua aplicação para o diretório padrão do Apache
COPY . /var/www/html/

# Conceda permissões corretas para o diretório de trabalho
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html


