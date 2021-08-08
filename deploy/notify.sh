#!/bin/bash

URL="https://hooks.slack.com/services/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"

CHANNEL='#isucon'
USERNAME='server'
ICON=':sushi:'
MESSAGE='```'$@'```'

PAYLOAD="payload={
    \"channel\": \"${CHANNEL}\",
    \"username\": \"${USERNAME}\",
    \"icon_emoji\": \"${ICON}\",
    \"text\": \"${HEAD}${MESSAGE}\"
}"

curl -s -S -X POST --data-urlencode "${PAYLOAD}" ${URL} > /dev/null
