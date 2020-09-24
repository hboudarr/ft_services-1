FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update && apk add vim

COPY start.sh /home/start.sh
RUN chmod 755 /home/start.sh

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz && \
        tar -C . -xzf telegraf-1.13.3-static_linux_amd64.tar.gz && \
        chmod +x telegraf/* && \
        cp telegraf/telegraf /usr/bin/ && \
        rm -rf *.tar.gz* telegraf/ && \
        mkdir /etc/telegraf

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT /home/start.sh