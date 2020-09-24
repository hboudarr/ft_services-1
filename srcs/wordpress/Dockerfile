FROM alpine:latest

RUN apk update
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
	php7-zlib php7-curl php7-mbstring php7-json php7-session wget \
	php7-xml php7-cli php7-phar mariadb-client

COPY ./wordpress /var/www/wordpress
RUN chmod 777 /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar & mv wp-cli.phar /usr/bin/wp-cli

COPY new-user.sql /home/new-user.sql
RUN chmod +x /home/new-user.sql
COPY start.sh /home/start.sh
RUN chmod +x /home/start.sh

EXPOSE 5050
ENTRYPOINT /home/start.sh