#!/bin/bash

mkdir -p $WORKDIR/storage
mkdir -p $WORKDIR/bootstrap/cache
chown -R www-data:www-data $WORKDIR/storage
chown -R www-data:www-data $WORKDIR/bootstrap/cache

php-fpm
