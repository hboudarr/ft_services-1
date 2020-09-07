FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add --no-cache mysql-client mysql \
	&& apk add nginx vim
COPY start-mysql.sh /home/start-mysql.sh
RUN chmod 777 /home/start-mysql.sh
RUN mkdir -p /run/mysql
RUN chown mysql /var/lib/mysql
ENV MYSQL_ROOT_PASSWORD password
ENTRYPOINT /home/start-mysql.sh