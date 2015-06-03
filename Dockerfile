FROM alpine:latest

RUN apk --update add zabbix-agent \
     && rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 10050

ENTRYPOINT ["/docker-entrypoint.sh"]
