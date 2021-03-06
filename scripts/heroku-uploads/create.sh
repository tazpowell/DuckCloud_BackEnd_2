#!/bin/bash

API="https://serene-eyrie-91568.herokuapp.com"
URL_PATH="/uploads"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "upload": {
      "title": "'"${TITLE}"'",
      "url": "'"${URL}"'",
      "mimetype": "'"${MIMETYPE}"'",
      "extension": "'"${EXT}"'",
      "tags": "'"${TAGS}"'",
      "owner": "'"${OWNER}"'"
    }
  }'

echo
