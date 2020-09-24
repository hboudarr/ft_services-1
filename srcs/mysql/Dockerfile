FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add --no-cache mysql-client mysql \
	&& apk add vim

RUN mkdir -p /run/mysqld
RUN chown mysql /var/lib/mysql

RUN rm /etc/my.cnf.d/mariadb-server.cnf
ADD mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
RUN chmod +r /etc/my.cnf.d/mariadb-server.cnf

ENV PMA_USER hherin
ENV PMA_PWD bibi

COPY create_tables.sql /home/create_tables.sql
COPY start-mysql.sh /home/start-mysql.sh
RUN chmod 777 /home/start-mysql.sh
ENTRYPOINT /home/start-mysql.sh