FROM ubuntu:16.04
RUN apt update && apt install php php-mbstring php-gd php-xml php-pdo apache2 unzip -y
ADD bahan.tar.gz /var/phpunit/
WORKDIR /var/phpunit
RUN cd /var/phpunit && unzip bahan.zip
CMD php artisan serve --port=8080
