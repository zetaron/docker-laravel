#!/bin/bash

read -d '' upstream << EOF
upstream fpm {
  server ${FPM_PORT_9000_TCP_ADDR}:${FPM_PORT_9000_TCP_PORT};
}
EOF

touch /etc/nginx/sites-enabled/01-upstream
echo $upstream > /etc/nginx/sites-enabled/01-upstream

echo "Writing to /etc/nginx/sites-enabled/01-upstream"
echo $upstream

#sed -i "s/%fpm-ip%/$FPM_PORT_9000_TCP_ADDR/" /etc/nginx/sites-enabled/default

exec /usr/sbin/nginx -g "daemon off;"
