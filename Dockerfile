FROM alpine:latest

RUN apk --update add zabbix-agent=2.4.5-r3 \
     && rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 10050

ENTRYPOINT ["/docker-entrypoint.sh"]
