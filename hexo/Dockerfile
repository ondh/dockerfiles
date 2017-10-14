FROM node:alpine
MAINTAINER Tonio

WORKDIR /blog

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache git && \
    npm config set user 0 && \
    npm config set unsafe-perm true && \
    npm install -g hexo-cli && \
    npm install hexo-server --save && \
    rm -rf /blog/* && \
    hexo init /blog

EXPOSE 4000

# run hexo server
CMD ["hexo", "server","-i","0.0.0.0"]