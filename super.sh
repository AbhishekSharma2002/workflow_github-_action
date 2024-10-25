#!/bin/bash
threshold=80
USAGE-$(df / | grep / | awk '{print $5}' | sed 's/%//g')
if [ $USAGE -gt $threshold ]; then
	echo "Dis usage is above $threshold%"
fi
