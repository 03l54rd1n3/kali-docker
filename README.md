# kali-docker
Docker quickhand for kali linux tools on other linux distributions

Modify [Dockerfile](./Dockerfile) to contain the kali tools you need.
Place [kali.sh](./kali.sh) in your PATH and use like
```
kali nmap 192.168.1.1/24 -vvv -sn
```

Default location for files is `/opt/kali`. Adjust in [kali.sh](./kali.sh) if needed.
