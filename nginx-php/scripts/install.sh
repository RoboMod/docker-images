#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

/build/scripts/php.sh

/build/scripts/finalize.sh
