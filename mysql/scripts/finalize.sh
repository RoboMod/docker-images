#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
rm -rf /build