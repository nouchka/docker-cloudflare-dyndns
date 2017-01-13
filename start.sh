#!/bin/bash

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
	-e "s=http://ipv4.icanhazip.com=https://ipv4.icanhazip.com=g" \
	/cloudflare-update-record.sh
/cloudflare-update-record.sh
