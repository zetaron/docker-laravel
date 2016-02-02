#!/bin/bash

upstream=<<EOF
upstream fpm {
  server ${FPM_PORT_9000_TCP_ADDR}:9000
}
EOF

touch /etc/nginx/sites-enabled/01-upstream
echo $upstream > /etc/nginx/sites-enabled/01-upstream

echo "Writing to /etc/nginx/sites-enabled/01-upstream"
echo $upstream

#sed -i "s/%fpm-ip%/$FPM_PORT_9000_TCP_ADDR/" /etc/nginx/sites-enabled/default

exec /usr/sbin/nginx -g "daemon off;"
