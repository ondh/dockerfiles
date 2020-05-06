FROM debian:10-slim
LABEL maintainer="Tonio"
LABEL version="3.3.5a.12340"

ADD server /server

RUN apt-get update \
    && apt-get install -y git wget unzip clang cmake gcc g++ libmariadbclient-dev libssl-dev libbz2-dev \
    libreadline-dev libncurses-dev libboost-all-dev p7zip default-libmysqlclient-dev mariadb-client \
    && update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang 100 \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /server/*.sh

VOLUME /wow
CMD ["/server/builder.sh"]