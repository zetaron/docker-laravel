#!/bin/bash

read -d '' upstream << EOF
upstream fpm {
  server ${FPM_PORT_9000_TCP_ADDR}:${FPM_PORT_9000_TCP_PORT};
}
EOF

touch /etc/nginx/conf.d/01-upstream.conf
echo $upstream > /etc/nginx/conf.d/01-upstream.conf

echo "Writing to /etc/nginx/conf.d/01-upstream.conf"
echo $upstream

exec /usr/sbin/nginx -g "daemon off;"
