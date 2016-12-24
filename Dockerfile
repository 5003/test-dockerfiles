FROM alpine:edge
WORKDIR /certs/
RUN apk add --no-cache curl && \
    curl --output /certs/server.crt --location https://github.com/SUSE/Portus/raw/f301fdfc9aff7e9eb220e848d6d6c69f9ab1d75a/vagrant/conf/ca_bundle/server.crt && \
    curl --output /certs/server.key --location https://github.com/SUSE/Portus/raw/f301fdfc9aff7e9eb220e848d6d6c69f9ab1d75a/vagrant/conf/ca_bundle/server.key && \
    apk del --no-cache curl