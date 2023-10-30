#!/bin/sh
set -e

echo "Activating feature 'dcm'"

curl -L https://github.com/beanworks/dcm/raw/master/bin/dcm-linux-amd64 -o /usr/local/bin/dcm

chmod +x /usr/local/bin/dcm