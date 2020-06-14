FROM alpine:3.11.6
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add nginx \
	&& apk add vim
RUN mkdir -p /run/nginx
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.sample
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY nginx-sc.sh /home/nginx-sc.sh
RUN chmod 777 /home/nginx-sc.sh
ENTRYPOINT /home/nginx-sc.sh
