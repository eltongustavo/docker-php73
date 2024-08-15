# Use a imagem base PHP com Apache
FROM php:7.3-apache

# Habilite o módulo rewrite se necessário
RUN a2enmod rewrite

# Crie o diretório /var/www/html e defina permissões
RUN mkdir -p /var/www/html && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Copie um arquivo de configuração padrão se necessário
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf


