FROM php

ENV \
  APP_DIR="/app" \
  APP_PORT="80"

COPY ./ $APP_DIR

RUN apt update && apt upgrade -y


RUN apt install -y php-{opcache,pdo,bcmath,bz2,calendar,ctype,exif,ffi,fileinfo,ftp,gd,iconv,intl,json,mbstring,mysqli,phar,posix,readline,shmop,sockets,sysvmsg,sysvsem,sysvshm,tokenizer,zip,curl,ldap}

# RUN apk add --update \
#     curl \
#     php \
#     php-opcache \
#     php-openssl \
#     php-pdo \
#     php-json \
#     php-phar \
#     php-dom \
#     && rm -rf /var/cache/apk/*

# RUN curl -sS https://getcomposer.org/installer | php -- \
#   --install-dir=/usr/bin --filename=composer

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

RUN cd $APP_DIR && composer install

WORKDIR $APP_DIR
CMD php artisan serve --host=0.0.0.0 --port=$APP_PORT