FROM alpine:edge
MAINTAINER tonio "honooon@gmail.com"

ENV PACKAGE "openssh-server"

WORKDIR /root

ADD entrypoint.sh /usr/local/bin

# Install package using --no-cache to update index and remove unwanted files
RUN apk add --no-cache $PACKAGE \
    && chmod +x /usr/local/bin/entrypoint.sh \
    && rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key \
	&& sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
	&& sed -i 's/#PubkeyAuthentication/PubkeyAuthentication/g' /etc/ssh/sshd_config

EXPOSE 22
ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/sbin/sshd","-D"]