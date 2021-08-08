#!/bin/bash

URL="https://hooks.slack.com/services/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"

CHANNEL='#isucon'
USERNAME='isucon deploy'
ICON=':sushi:'
MESSAGE='```'$@'```'

PAYLOAD="payload={
    \"channel\": \"${CHANNEL}\",
    \"username\": \"${USERNAME}\",
    \"icon_emoji\": \"${ICON}\",
    \"text\": \"${HEAD}${MESSAGE}\"
}"

curl -s -S -X POST --data-urlencode "${PAYLOAD}" ${URL} > /dev/null
