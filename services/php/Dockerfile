FROM php:7.1-fpm
MAINTAINER jerry <jrzyq111@gmail.com>

ENV PHPREDIS_VERSION 3.0.0
ENV PHPREDIS_EXT_DIR /usr/src/php/redis

RUN mkdir -p $PHPREDIS_EXT_DIR \
	&& curl -L https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz | tar xvz -C $PHPREDIS_EXT_DIR --strip 1 \
	&& docker-php-ext-install $PHPREDIS_EXT_DIR

RUN apt-get update && apt-get install -y \
	build-essential \
	gcc \
	make \
	curl \
	libfcgi-dev \
	libmcrypt-dev \
	libssl-dev \
	libxml2-dev \
	libbz2-dev \
	libcurl4-openssl-dev \
	libjpeg-dev \
	libpng12-dev \
	libfreetype6-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd \
	--with-zlib-dir \
	--with-freetype-dir \
	--enable-mbstring \
	--with-png-dir=/usr \
	--with-jpeg-dir=/usr \
	&& docker-php-ext-install curl mcrypt zlib bz2 zip mbstrin gd iconv mysqli pdo_mysql opcache openssl

COPY ./config/php.ini /usr/local/etc/php/conf.d/
COPY ./config/opcache-recommended.ini /usr/local/etc/php/conf.d/
