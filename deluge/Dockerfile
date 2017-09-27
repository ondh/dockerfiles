FROM alpine:edge
MAINTAINER Tonio "honooon@gmail.com"

ARG DELUGE_VERSION=1.3.15
ARG PACKAGE="py-setuptools libtorrent-rasterbar py-chardet py-openssl py-mako py-twisted py-xdg py-pip"
ARG PY_PACKAGE="constantly incremental service_identity automat"

WORKDIR /deluge

COPY core.conf /deluge/core.conf
COPY start.sh /start.sh

# Install package using --no-cache to update index and remove unwanted files
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
    && apk add --no-cache $PACKAGE \
    && pip install $PY_PACKAGE \
    && cd /tmp \
    && DELUGE_TARBALL="deluge-${DELUGE_VERSION}.tar.bz2" \
    && wget -q http://download.deluge-torrent.org/source/${DELUGE_TARBALL} \
    && tar -xjf ${DELUGE_TARBALL}\
    && cd /tmp/deluge-${DELUGE_VERSION} \
    && python setup.py build \
    && python setup.py install \
    && chmod +x /start.sh \
    && mkdir /deluge/downloads \
    && mkdir /deluge/config \
    && apk del py-pip \
    && rm -rf /var/cache/apk/* /tmp/* /root/.gnupg

VOLUME ["/deluge/config"]
VOLUME ["/deluge/downloads"]

# Torrent port
EXPOSE 53160
EXPOSE 53160/udp
# WebUI
EXPOSE 8112
# Daemon
EXPOSE 58846

CMD ["/start.sh"]