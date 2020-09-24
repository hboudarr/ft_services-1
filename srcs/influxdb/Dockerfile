FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update && apk add vim influxdb

RUN mkdir -p /var/lib/influxdb
RUN chown influxdb:influxdb /var/lib/influxdb
RUN mkdir -p /etc/influxdb
COPY influxdb.conf /etc/influxdb/influxdb.conf
RUN chown influxdb:influxdb /etc/influxdb/*

COPY start.sh /home/start.sh
RUN chmod 777 /home/start.sh

ENTRYPOINT /home/start.sh