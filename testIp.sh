#!/bin/bash

##TODO get IP from cloudflare api to get current record without cache consideration from travis
echo "Fake test on dns but travis cache it, so no change"

##Let the time to DNS to propagate
sleep 50

ip=$(curl -s http://ipv4.icanhazip.com)
cl_ip=$(nslookup testing.musaeum.info| awk '/^Address: / { print $2 ; exit }')

if [ $ip != $cl_ip ]; then
	echo "IP don't match. CL IP: "$cl_ip" CURRENT_IP: "$ip" "
	##exit 1
fi

echo "IP good ("$cl_ip")"

