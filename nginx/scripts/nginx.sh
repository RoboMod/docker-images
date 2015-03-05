#!/bin/bash
set -e
source /build/scripts/buildconfig
source /etc/environment
set -x

## Install nginx
minimal_apt_get_install nginx

## Install Nginx and log forwarder runit service.
mkdir /etc/service/nginx
cp /build/runit/nginx /etc/service/nginx/run

mkdir /etc/service/nginx-log-forwarder
cp /build/runit/nginx-log-forwarder /etc/service/nginx-log-forwarder/run