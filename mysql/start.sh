#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# with inspecting
#docker run --rm -t -i -v $BASEDIR/volumes-template/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=foo $1 /sbin/my_init -- bash -l

# as daemon
docker run -d -v $BASEDIR/volumes-template/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=foo $1