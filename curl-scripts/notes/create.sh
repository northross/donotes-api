#!/bin/bash

curl "http://localhost:4741/notes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "note": {
      "subject": "'"${SUBJECT}"'",
      "predicate": "'"${PREDICATE}"'"
    }
  }'

echo
