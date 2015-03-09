#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

## Install php with apc and mysql support
minimal_apt_get_install php5 php5-fpm php5-mysql php5-cli mysql-client-core-5.5 php-apc

## Install runit service
mkdir /etc/service/php-fpm
cp /build/runit/php-fpm /etc/service/php-fpm/run

## Replace nginx service (with dependency check for fpm)
cp /build/runit/nginx /etc/service/nginx/run
