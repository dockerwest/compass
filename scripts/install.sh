#!/bin/sh

set -e

apk add --update su-exec build-base libffi-dev ruby ruby-dev git bash
gem install sass compass --no-ri --no-rdoc
apk del build-base libffi-dev ruby-dev
rm -rf /var/cache/apk/*

mkdir -p /cssapp
