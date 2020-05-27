# frp

## server
```bash
docker run -d --name frps -p 7000:7000 -v path-to-frp/frps.ini:/frps.ini -v /etc/localtime:/etc/localtime --restart unless-stopped ondh/frp /frps -c /frps.ini

#or

docker run -d --name frps -p 7000:7000 -v path-to-frp/frps.ini:/frps.ini -v /etc/localtime:/etc/localtime --restart unless-stopped ondh/frp:s
```

## client
```bash
docker run -d --name frpc --network=host -v path-to-frpc/frpc.ini:/frpc.ini -v /etc/localtime:/etc/localtime --restart unless-stopped ondh/frp /frpc -c /frpc.ini

#or

docker run -d --name frpc --network=host -v path-to-frpc/frpc.ini:/frpc.ini -v /etc/localtime:/etc/localtime --restart unless-stopped ondh/frp:c
```