FROM php:8.0.3-cli

RUN apt-get update && apt-get install -y \
  libmemcached-dev \
  zlib1g-dev

RUN docker-php-ext-install \
  pdo_mysql \
  mysql \
  opcache \
  memcached \
  bcmath \
  gd \
  gmagick \
  imagick \
  intl \
  mbstring \
  mcrypt \
  xml \
  zip \
  yaml \
  uuid \
  tidy

RUN docker-php-ext-enable memcached

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

FROM jenkins/jenkins:lts-jdk11