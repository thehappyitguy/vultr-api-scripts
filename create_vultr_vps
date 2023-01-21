#!/bin/bash

# generate a random hostname with 10-12 characters
hostname=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1)

# create the VPS
curl --location --request POST 'https://api.vultr.com/v2/instances' \
--header 'Authorization: Bearer <enter-api-key-here>' \
--header 'Content-Type: application/json' \
--data-raw "{
    \"region\" : \"atl\", 
    \"plan\" : \"vhf-1c-1gb\", 
    \"label\" : \"API-Created\",
    \"os_id\" : 1743,
    \"hostname\":\"$hostname\",
    \"enable_ipv6\": true,
    \"SSHkey_ids\": \"all\",
    \"auto_backups\": false,
    \"userdata\": \"#!/bin/bash\napt-get update -y\napt-get upgrade -y\napt-get autoremove -y\n reboot\"
}"
