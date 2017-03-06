FROM php:7.1
MAINTAINER jerry <jrzyq111@gmail.com>

WORKDIR /mnt/app

RUN apt-get update && apt-get install -y \
	git \
	vim \
	wget \
	cron \
	locales \
	mariadb-client \
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
	&& rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd \
	--with-freetype-dir=/usr/include/ \
	--with-png-dir=/usr \
	--with-jpeg-dir=/usr \
	&& docker-php-ext-install curl mcrypt bz2 zip mbstring gd iconv mysqli pdo_mysql opcache 

# set language
RUN dpkg-reconfigure locales && \
	locale-gen C.UTF-8 && \
	/usr/sbin/update-locale LANG=C.UTF-8
RUN echo 'zh_CN.UTF-8 UTF-8' >> /etc/locale.gen && \
	locale-gen
ENV LC_ALL C.UTF-8
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8

# install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
	&& php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
	&& php -r "unlink('composer-setup.php');" \
	&& chmod +x /usr/local/bin/composer \
	&& echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc \
	&& . ~/.bashrc \
	&& composer config -g repo.packagist composer https://packagist.phpcomposer.com

