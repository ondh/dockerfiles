FROM python:alpine

LABEL maintainer="Tonio"

WORKDIR /app

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache git tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && pip3 install gunicorn flask \
    && apk del tzdata

ENV GIT_URL="https://github.com/rwv/chinese-dos-games-web.git"

ADD entrypoint.sh /usr/local/bin
ADD download.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/download.sh

EXPOSE 5000

ENTRYPOINT ["entrypoint.sh"]