FROM alpine:edge
MAINTAINER Tonio "honooon@gmail.com"

ENV PACKAGE "deluge py-pip"
ENV PY_PACKAGE "constantly incremental service_identity automat"

WORKDIR /deluge

# Install package using --no-cache to update index and remove unwanted files
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --no-cache $PACKAGE && \
	pip install $PY_PACKAGE && \
    mkdir /deluge/downloads && \
    mkdir /deluge/config && \
    apk del py-pip

COPY core.conf /deluge/core.conf
COPY start.sh /start.sh

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