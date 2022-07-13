#mydockerfile
#v1
FROM debian:stable-20220711
RUN apt-get update \
    && apt-get install -y nginx php php-fpm
COPY default /etc/nginx/sites-available 
COPY index.php /var/www/html/
COPY entrypoint.sh /tmp/
EXPOSE 80
ENTRYPOINT ["/bin/bash" , "/tmp/entrypoint.sh"]
