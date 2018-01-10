FROM dockage/alpine-openrc:3.7
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

ENV CONFD_VERSION=0.14.0

COPY assets/root/ /

RUN wget -O /usr/sbin/confd https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 \
    && chmod +x /usr/sbin/confd \
    && rc-update add confd default \
    && rc-update add local

WORKDIR /etc/confd
