#!/bin/bash

if ! openssl sha1 /cloudflare-update-record.sh| grep $CLOUDFLARE_FILE_SHA >> /dev/null 2>&1; then
	echo "wrong SHA"
	exit 1
fi

ZONE=${CF_HOST#*.}

if [ ! "$CF_API" ]; then
	echo no API key
	exit 0
fi

sed -i \
    -e "s/auth_email=.*/auth_email=\"$CF_EMAIL\"/g" \
    -e "s/auth_key=.*/auth_key=\"$CF_API\"/g" \
    -e "s/zone_name=.*/zone_name=\"$ZONE\"/g" \
    -e "s/record_name=.*/record_name=\"$CF_HOST\"/g" \
    /cloudflare-update-record.sh

/cloudflare-update-record.sh
