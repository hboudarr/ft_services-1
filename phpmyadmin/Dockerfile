FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add vim \
	&& apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
	php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN mkdir -p /usr/share/webapps/

WORKDIR /usr/share/webapps/
ADD phpmyadmin/ phpmyadmin/
RUN chmod 777 phpmyadmin/
ADD config.inc.php phpmyadmin/config.inc.php
RUN chmod 755 phpmyadmin/config.inc.php

WORKDIR /

CMD ["php", "-S", "0.0.0.0:5000", "-t", "/usr/share/webapps/phpmyadmin"]
