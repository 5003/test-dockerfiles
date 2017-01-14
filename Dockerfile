FROM fluent/fluentd:latest-onbuild
RUN set -e && \
    for i in fluent-plugin-elasticsearch \
             fluent-plugin-add \
             fluent-plugin-record-reformer \
             fluent-plugin-woothee \
             fluent-plugin-anonymizer \
             fluent-plugin-parser \
             'fluent-plugin-concat --version 1.0.0' \
      ; do fluent-gem install $i \
    ; done