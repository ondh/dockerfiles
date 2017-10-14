FROM nginx:alpine
MAINTAINER Tonio

ENV PACKAGE "tzdata nginx-mod-http-fancyindex"

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	apk del $PACKAGE

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]