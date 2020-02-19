FROM dockage/alpine:3.11-openrc

LABEL   maintainer="danesh@riseup.net" \
        org.label-schema.name="confd" \
        org.label-schema.vendor="Dockage" \
        org.label-schema.description="Docker confd, built on Alpine Linux. confd is a lightweight configuration management tool." \
        org.label-schema.vcs-url="https://github.com/dockage/confd" \
        org.label-schema.version="alpine3.11" \
        org.label-schema.license="MIT"

ENV CONFD_VERSION=0.16.0

COPY assets/root/ /
ADD https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 /usr/bin/confd

RUN chmod +x /usr/bin/confd \
    && rc-update add local \
    && rc-update add confd
