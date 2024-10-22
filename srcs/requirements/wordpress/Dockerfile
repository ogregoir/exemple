# Utiliser Debian comme base
FROM debian:bullseye

# Installer PHP, php-fpm, et les extensions nécessaires pour WordPress
RUN apt-get update && apt-get install -y \
    php-fpm php-mysql wget

# Télécharger WordPress
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xzf latest.tar.gz && \
    mv wordpress /var/www/html && \
    rm latest.tar.gz

# Configurer php-fpm
COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

# Exposer le port 9000 pour php-fpm
EXPOSE 9000

# Démarrer php-fpm
CMD ["php-fpm7.4", "-F"]

