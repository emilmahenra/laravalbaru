FROM ubuntu:16.04
RUN apt update && apt install php php-mbstring php-gd php-xml php-pdo apache2 -y
ADD bahan.tar.gz /var/phpunit/
WORKDIR /var/phpunit
RUN cd /var/phpunit && tar xvzf bahan.tar.gz
CMD php artisan serve --port=8080
