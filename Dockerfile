FROM ubuntu:16.04
RUN apt update && apt install php php-mbstring php-gd php-xml php-pdo -y
COPY ./* /var/phpunit/
WORKDIR /var/phpunit
CMD php artisan serve --port 8080
