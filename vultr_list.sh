#!/bin/bash

# set the API key
api_key="<enter-api-key>"

# make a GET request to the Vultr API to list all instances
curl --location --request GET "https://api.vultr.com/v2/instances" \
--header "Authorization: Bearer $api_key" | jq
