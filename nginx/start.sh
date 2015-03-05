#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# with inspecting
#docker run --rm -t -i -v $BASEDIR/volumes-template/data:/usr/share/nginx/html \
#                      -v $BASEDIR/volumes-template/conf/nginx.conf:/etc/nginx/nginx.conf \
#                      $1 /sbin/my_init -- bash -l

# as daemon
docker run -d -v $BASEDIR/volumes-template/data:/usr/share/nginx/html \
              -v $BASEDIR/volumes-template/conf/nginx.conf:/etc/nginx/nginx.conf \
              $1