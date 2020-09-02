#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
  --header "Authorization: Token 71bd4861-73b4-45fc-b370-bf39c86a5b4d" \
  --header "Content-Type: application/json" \
  --data "{
    \"value\":\"42 %\",
    \"sha\":\"${TRAVIS_COMMIT}\"
  }" \
  https://seriesci.com/api/sambacha/seriesci-demo/:series/one

exit 0
