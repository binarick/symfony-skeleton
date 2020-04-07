FROM php:7.4-cli

LABEL maintainer="Binarick <e89139139835@gmail.com>"

RUN apt-get update && apt-get install -y \
    unzip
#    && zlib1g-dev zip \
#    && docker-php-ext-install zip

# Install COMPOSER
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer --quiet
ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /app