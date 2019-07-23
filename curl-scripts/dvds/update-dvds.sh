
#!/bin/bash

curl --include --request PATCH "https://wdi-library-api.herokuapp.com/books/${ID}" \
  --header "Content-type: application/json" \
  --data '{
    "dvd": {
      "title": "'"${TITLE}"'",
      "year": "'"${YEAR}"'",
      "starring": "'"${STARRING}"'",
      "synopsis": "'"${SYNOPSIS}"'"
    }
  }'
