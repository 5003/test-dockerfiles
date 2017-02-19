FROM nginx:1.11-alpine
RUN apk add --no-cache coreutils \
                       docker \
                       openssl \
                       certbot \
                       jq
ENV CONF_DEST /etc/nginx/conf.d/test.conf
ADD https://github.com/5003/test-scripts/raw/master/automatic-proxy-generate.sh /usr/local/bin/test.sh