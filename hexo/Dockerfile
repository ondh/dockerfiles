FROM node:alpine
MAINTAINER Tonio "honooon@gmail.com"

WORKDIR /blog

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache tzdata && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	apk del tzdata && \
    npm config set user 0 && \
    npm config set unsafe-perm true && \
    npm install -g hexo-cli && \
    npm clean cache --force

EXPOSE 4000

# run hexo server
CMD ["hexo", "server","-i","0.0.0.0"]