#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

/build/scripts/prepare.sh

/build/scripts/nginx.sh

/build/scripts/finalize.sh
