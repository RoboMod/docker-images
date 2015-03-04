#!/bin/bash
set -e
source /build/scripts/buildconfig
set -x

/build/scripts/prepare.sh

/build/scripts/mysql.sh

/build/scripts/finalize.sh
