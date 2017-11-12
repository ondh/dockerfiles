FROM alpine:latest
MAINTAINER Tonio

ARG PACKAGE="bash git python procps"
ENV SERVER "localhost:5900"

WORKDIR /work

COPY start.sh /work/start.sh

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE \
	&& cd /work \
	&& wget https://github.com/novnc/noVNC/archive/v1.0.0-testing.2.tar.gz \
    && tar -xzf v1.0.0-testing.2.tar.gz \
    && mv noVNC-1.0.0-testing.2/ noVNC \
    && wget https://github.com/novnc/websockify/archive/v0.8.0.tar.gz \
    && tar -xzf v0.8.0.tar.gz \
    && mv websockify-0.8.0/ noVNC/utils/websockify \
    && cp noVNC/vnc.html noVNC/index.html \
	&& chmod +x /work/start.sh \
	&& rm -rf /work/*.tar.gz

EXPOSE 6080

CMD ["/bin/sh","/work/start.sh"]