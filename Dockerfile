FROM alpine:3.10

RUN apk add --no-cache \
	bash \
	tinyproxy

COPY run.sh /opt/docker-tinyproxy/run.sh
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

ENTRYPOINT ["/opt/docker-tinyproxy/run.sh"]