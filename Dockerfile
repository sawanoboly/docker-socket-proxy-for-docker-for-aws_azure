FROM nginx:mainline-alpine
MAINTAINER sawanoboriyu@higanworks.com
ADD nginx.conf /etc/nginx/nginx.conf
RUN apk add --update apache2-utils

ENV AUTH_USER d4xuser
ENV AUTH_PASSWORD d4xpassword


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

## From Origin
CMD ["nginx", "-g", "daemon off;"]
