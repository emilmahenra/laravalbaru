FROM ubuntu:16.04
RUN apt update 
RUN apt-get install software-properties-common && add-apt-repository ppa:ondrej/php -y 
RUN apt update && apt install php php-mbstring php-gd php-xml php-pdo apache2 unzip -y
ADD bahan.zip /var/phpunit/
WORKDIR /var/phpunit
RUN unzip -o bahan.zip 
CMD php artisan serve --port=8080
