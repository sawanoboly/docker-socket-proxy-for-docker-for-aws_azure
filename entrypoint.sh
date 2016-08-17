#!/bin/sh

# for local run to debug
if ! id -u docker ; then
  adduser docker -D
fi

htpasswd -bc /etc/nginx/htpasswd $AUTH_USER $AUTH_PASSWORD

exec "$@"
