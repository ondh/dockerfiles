FROM alpine:latest
MAINTAINER tonio "honooon@gmail.com"

ENV PACKAGE "tzdata"

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	apk del $PACKAGE