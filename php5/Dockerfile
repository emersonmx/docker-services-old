FROM php:5.6-fpm

ARG LOCAL_USER_ID
ARG LOCAL_GROUP_ID

RUN groupadd -g ${LOCAL_GROUP_ID} ${LOCAL_USER:-dev} \
    && useradd --shell /bin/bash -u ${LOCAL_USER_ID} -o -c "" -m ${LOCAL_USER:-dev} -g ${LOCAL_GROUP_ID}

RUN apt-get update \
    && apt-get install -y \
        libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev \
        libicu-dev zlib1g-dev postgresql-server-dev-9.6 \
        libmagickwand-dev git vim locales unzip \
    && sed -i 's/^\#[ \t]*en_US\(.*\)/en_US\1/' /etc/locale.gen \
    && sed -i 's/^\#[ \t]*pt_\(.*\)/pt_\1/' /etc/locale.gen \
    && locale-gen \
    && docker-php-ext-install -j$(nproc) \
        iconv mcrypt intl zip bcmath pcntl \
        pdo_pgsql pgsql pdo_mysql mysql mysqli \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install imagick-beta \
    && docker-php-ext-enable imagick \
    && apt-get remove -y \
        libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev \
        libicu-dev zlib1g-dev postgresql-server-dev-9.6 \
        libmagickwand-dev \
    && apt-get install -y libfreetype6 libjpeg62-turbo libpng16-16 libmcrypt4 \
        libicu57 libltdl7 zlib1g libpq5 \
        libmagickwand-6.q16-3 \
        iproute2 \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoremove -y

RUN yes | pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug \
    && echo "xdebug.remote_host="`/sbin/ip route|awk '/default/ { print $3 }'` >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_autostart=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_connect_back=off" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_port=9001" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_handler=dbgp" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.profiler_enable=0" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.profiler_output_dir=\"/code\"" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN \
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update

RUN sed -i 's/^\(user\|group\) = www-data/\1 = dev/' /usr/local/etc/php-fpm.d/www.conf

COPY php.ini /usr/local/etc/php/

EXPOSE 9001
