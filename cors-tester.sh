#!/usr/bin/env bash

URL=${1}

[ -z "${URL}" ] && {
  echo No url specified
  exit 1
}

ORIGIN=${2:-https://google.com}

curl -I \
  --verbose \
  -XGET \
  -H "Origin: ${ORIGIN}" \
  ${URL}
