FROM alpine:latest

RUN apk update
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
	php7-zlib php7-curl php7-mbstring php7-json php7-session

COPY ./wordpress /var/www/wordpress
RUN chmod 777 /var/www/wordpress

EXPOSE 5050
CMD ["php", "-S", "0.0.0.0:5050", "-t", "/var/www/wordpress"]