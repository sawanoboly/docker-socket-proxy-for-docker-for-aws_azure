# docker-socket-proxy-for-docker-for-aws_azure

Remote API for D4x

https://hub.docker.com/r/sawanoboly/nginx-dsp/

Usage:

```
$ docker service create \
  --name nginx-dsp \
  -p 80:80 \
  --replicas 3 \
  --constraint 'node.role == manager' \
  -e AUTH_USER=username \
  -e AUTH_PASSWORD=PASSWORD \
  --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
  --mount type=bind,source=/usr/bin/docker,target=/usr/bin/docker \
  --mount type=bind,source=/etc/passwd,target=/etc/passwd,readonly=true \
  --mount type=bind,source=/etc/shadow,target=/etc/shadow,readonly=true \
  --mount type=bind,source=/etc/group,target=/etc/group,readonly=true \
  sawanoboly/nginx-dsp:latest
```
