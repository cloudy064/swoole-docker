FROM php:7.1-cli
MAINTAINER cloudy064 cloudy064@gmail.com
RUN apt-get upgrade
RUN apt-get update
RUN pecl install redis \
    && pecl install swoole \
    && docker-php-ext-enable redis \
    && docker-php-ext-enable swoole