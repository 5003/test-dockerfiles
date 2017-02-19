FROM nginx:1.11-alpine
RUN apk add --no-cache coreutils \
                       docker \
                       openssl \
                       certbot \
                       jq