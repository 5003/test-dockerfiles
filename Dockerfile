FROM alpine:edge

COPY docker-entrypoint.sh /usr/local/bin/
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del --no-cache tzdata && \
    chmod +x /usr/local/bin/docker-entrypoint.sh

VOLUME /data/
ENTRYPOINT ["docker-entrypoint.sh"]