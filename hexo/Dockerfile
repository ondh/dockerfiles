FROM node:alpine
MAINTAINER Tonio "honooon@gmail.com"

ENV PACKAGE "bash tzdata"

WORKDIR /blog

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	npm install hexo-cli -g

EXPOSE 4000

# run hexo server
CMD ["hexo", "server","-i","0.0.0.0"]