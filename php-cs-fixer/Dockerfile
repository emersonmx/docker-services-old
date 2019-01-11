FROM php:7.2-alpine

ENV PHP_CS_FIXER_VERSION=2.13.3

RUN curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v$PHP_CS_FIXER_VERSION/php-cs-fixer.phar > /usr/local/bin/php-cs-fixer \
    && chmod +x /usr/local/bin/php-cs-fixer \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME ["/code"]
WORKDIR /code

ENTRYPOINT ["php-cs-fixer"]
CMD ["--version"]
