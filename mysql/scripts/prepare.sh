#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

## Create a user for mysql
groupadd -r mysql && useradd -r -g mysql mysql
