-- Créer la base de données WordPress
CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Créer l'utilisateur WordPress et lui accorder des permissions sur la base de données
CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspassword';

-- Accorder tous les privilèges à l'utilisateur sur la base de données WordPress
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';

-- Appliquer les changements de privilèges
FLUSH PRIVILEGES;

