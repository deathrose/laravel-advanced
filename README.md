# Dockerize Laravel Application

For original application repository visit:
https://github.com/nasirkhan/laravel-starter

### Requirements
Software :
- docker-compose
- docker-engine


### Installation

Clone and composer install :
```sh
$ git clone --recurse-submodules https://gitlab.com/pt-dot-playground/training-devops/laravel-advanced.git
$ cd laravel-advanced/src 
$ cp .env.example .env
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
MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME={YOUR_USERNAME}
MAIL_PASSWORD={YOUR_PASSWORD}
MAIL_ENCRYPTION=tls
...
```
Run docker-compose :
```sh
$ cd .. && docker-compose up -d
$ docker-compose exec -it php /bin/bash
or 
$ docker-compose exec -it php /bin/sh
```
Configure PHP Container :
```sh
//inside the PHP container
$ composer install
$ php artisan key:generate
$ php artisan migrate --seed
$ php artisan storage:link
$ chmod -R gu+w storage
$ chmod -R guo+w storage
$ php artisan cache:clear
```

