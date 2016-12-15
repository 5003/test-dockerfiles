#!/bin/ash
while :
do sleep 5
  touch /data/test-$(date +%Y-%m-%d_%H%M%S).empty
done