#!/bin/sh

if [ ! -f "/usr/local/etc/ssh_host_rsa_key" ]; then
	# generate fresh rsa key
	ssh-keygen -f /usr/local/etc/ssh_host_rsa_key -N '' -t rsa -y
fi
if [ ! -f "/usr/local/etc/ssh_host_dsa_key" ]; then
	# generate fresh dsa key
	ssh-keygen -f /usr/local/etc/ssh_host_dsa_key -N '' -t dsa -y
fi

yes |cp -rf /usr/local/etc/sshd_config.default /usr/local/etc/sshd_config
echo obssh:$USER_PASSWORD | chpasswd
echo "ObfuscatedPort 22" >> /usr/local/etc/sshd_config
echo "ObfuscateKeyword $OBFUSCATE_KEY" >> /usr/local/etc/sshd_config

/usr/local/sbin/sshd -f /usr/local/etc/sshd_config &
wait