# Utiliser Alpine comme base
FROM alpine:3.17

# Installer MariaDB
RUN apk add --no-cache mariadb mariadb-client

# Copier le script d'initialisation pour la base de données
COPY ./init.sql /docker-entrypoint-initdb.d/

# Exposer le port 3306
EXPOSE 3306

# Démarrer MariaDB
CMD ["mysqld"]

