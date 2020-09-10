FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add vim tar wget curl nginx\
	&& apk add php7-fpm php7-opcache php7-common php7-iconv php7-json php7-gd \
    php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc \
    php7-posix php7-session php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-curl \
    php7-xml php7-mbstring
RUN mkdir -p /usr/share/webapps/
WORKDIR /usr/share/webapps/
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpmyadmin
ADD config.inc.php phpmyadmin/config.inc.php
WORKDIR /
RUN mkdir -p /run/nginx
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.sample
COPY mynginx.conf /etc/nginx/conf.d/mynginx.conf
# RUN mkdir -p /etc/ssl/certs && mkdir -p /etc/ssl/private
# COPY nginx.crt /etc/ssl/certs/nginx.crt
# COPY nginx.key /etc/ssl/private/nginx.key
RUN chmod 755 /usr/share/webapps/phpmyadmin/config.inc.php
COPY start_pma.sh /home/start_pma.sh
RUN chmod +x /home/start_pma.sh
ENTRYPOINT /home/start_pma.sh
