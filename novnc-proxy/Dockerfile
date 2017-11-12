FROM alpine:latest
MAINTAINER Tonio

ARG PACKAGE="bash git python procps"
ENV SERVER "localhost:5900"

WORKDIR /work

COPY start.sh /work/start.sh

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE \
	&& cd /work \
	&& git clone https://github.com/novnc/noVNC.git \
	&& cd /work/noVNC/utils \
	&& git clone https://github.com/novnc/websockify \
	&& chmod +x /work/start.sh \
	&& rm -rf /work/noVNC/.git \
	&& rm -rf /work/noVNC/utils/websockify/.git

EXPOSE 6080

CMD ["/bin/sh","/work/start.sh"]