FROM alpine:latest
MAINTAINER Tonio

ARG PACKAGE="bash git python"
ENV SERVER "localhost:5900"

WORKDIR /work

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE \
	&& cd /work \
	&& git clone https://github.com/novnc/noVNC.git

EXPOSE 6080

CMD ["./work/noVNC/utils/launch.sh", "--vnc", "$SERVER"]