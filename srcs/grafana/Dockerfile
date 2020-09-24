FROM alpine:latest
MAINTAINER Helene Herin <hherin@student.42.fr>

RUN apk update \
	&& apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

COPY sources.yaml /usr/share/grafana/conf/provisioning/datasources/sources.yaml
RUN mkdir /usr/share/grafana/conf/provisioning/dashboards/mine
COPY dashboards/*.json /usr/share/grafana/conf/provisioning/dashboards/mine/
COPY config.yaml /usr/share/grafana/conf/provisioning/dashboards/config.yaml

COPY start.sh /home/start.sh
RUN chmod 755 /home/start.sh

ENTRYPOINT /home/start.sh