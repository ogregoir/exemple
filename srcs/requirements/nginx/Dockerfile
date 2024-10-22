FROM alpine:3.17

# Installer NGINX et OpenSSL
RUN apk add --no-cache nginx openssl

# Configurer TLS v1.2 et v1.3 uniquement dans le fichier de config NGINX
RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx-selfsigned.key \
    -out /etc/nginx/ssl/nginx-selfsigned.crt \
    -subj "/C=FR/ST=Nice/L=Nice/O=inception/CN=localhost"

COPY ./nginx.conf /etc/nginx/nginx.conf

# Exposer le port 443 pour HTTPS
EXPOSE 443

# Démarrer NGINX en mode daemon off
CMD ["nginx", "-g", "daemon off;"]

