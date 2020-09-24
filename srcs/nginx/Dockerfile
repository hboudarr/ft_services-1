FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add nginx \
	&& apk add vim \
	&& apk add openssl \
	&& apk add openssh
RUN mkdir -p /run/nginx
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.sample
RUN mkdir -p /etc/ssl/certs && mkdir -p /etc/ssl/private
COPY mynginx.conf /etc/nginx/conf.d/mynginx.conf
COPY nginx-sc.sh /home/nginx-sc.sh
RUN chmod 777 /home/nginx-sc.sh
EXPOSE 80
ENV USER="hherin"
ENV PWD="hherin"
ENTRYPOINT /home/nginx-sc.sh
