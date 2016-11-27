#!/bin/bash

##Let the time to DNS to propagate
sleep 50

ip=$(curl -s http://ipv4.icanhazip.com)
cl_ip=$(nslookup testing.musaeum.info| awk '/^Address: / { print $2 ; exit }')

if [ $ip != $cl_ip ]; then
	echo "IP don't match. CL IP: "$cl_ip" CURRENT_IP: "$ip" "
	exit 1
fi

echo "IP good ("$cl_ip")"
