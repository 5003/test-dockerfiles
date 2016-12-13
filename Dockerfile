FROM alpine:edge
RUN apk add --no-cache openrc \
                       nfs-utils
WORKDIR /data/
RUN rc-update add nfs && rc-status && touch /run/openrc/softlevel && \
    echo '/data/ *(insecure,rw,sync,no_subtree_check,no_root_squash)' > /etc/exports && \
    exportfs -a