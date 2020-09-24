FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add vsftpd openssl openssh

RUN rm -rf /etc/vsftpd/vsftpd.conf
RUN mkdir -p /run/vsftpd
RUN adduser -D hherin && echo "hherin:hherin" | chpasswd

WORKDIR /etc/vsftpd/
COPY vsftpd.conf vsftpd.conf
RUN chmod 755 vsftpd.conf
RUN mkdir ssl/
RUN chmod 777 ssl/

WORKDIR /
RUN mkdir -p /home/hherin/ftp/files \
        && chmod a-w /home/hherin/ftp
COPY start.sh /home/start.sh
RUN chmod 777 /home/start.sh

ENTRYPOINT /home/start.sh