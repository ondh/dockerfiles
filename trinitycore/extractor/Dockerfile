FROM debian:10-slim
LABEL maintainer="Tonio"
LABEL version="3.3.5a.12340"

ADD server /server

RUN apt-get update \
    && apt-get install -y libboost-system1.67.0 libboost-filesystem1.67.0 libboost-thread1.67.0 libboost-program-options1.67.0 \
    libboost-iostreams1.67.0 libboost-regex1.67.0 libboost-chrono1.67.0 libboost-date-time1.67.0 libssl1.1 \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /server/*.sh

VOLUME /wow
CMD ["/server/extractor.sh"]