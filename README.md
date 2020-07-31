# Dockerize Laravel Application

For original application repository visit:
https://github.com/nasirkhan/laravel-starter

### Requirements
Software :
- docker-compose
- docker-engine
- php >= 7.3
- php composer


PHP Extensions (Linux Package) :
- php-mcrypt 
- php-cli 
- php-gd 
- php-curl 
- php-mysql 
- php-ldap 
- php-zip 
- php-fileinfo
- php-imagick 
- php-xml
- php-mbstring

### Installation

Clone and composer install :
```sh
$ git clone --recurse-submodules https://gitlab.com/pt-dot-playground/training-devops/laravel-advanced.git
$ cd laravel-advanced/src && composer install
$ cp .env.example .env
$ php artisan key:generate
$ nano .env
```
Edit .env file :
```sh
...
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel-starter
DB_USERNAME=homestead
DB_PASSWORD=secret
...
```
Run docker-compose :
```sh
$ cd .. && docker-compose up -d
$ docker-compose exec -it php /bin/bash
```
Configure PHP Container :
```sh
//inside the PHP container
$ php artisan migrate --seed
$ php artisan storage:link
$ chmod -R gu+w storage
$ chmod -R guo+w storage
$ php artisan cache:clear
```
