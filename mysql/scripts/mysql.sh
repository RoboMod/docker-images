#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

# install mysql
minimal_apt_get_install mysql-server

# remove auto-created stuff
#rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql && chown mysql:mysql /var/lib/mysql

# mysql must write to /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql

# add runit service
mkdir /etc/service/mysql
cp /build/runit/mysql /etc/service/mysql/run

## install a default configuration
#cp /build/config/mysql.conf /etc/mysql/my.cnf
