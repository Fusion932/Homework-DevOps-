#!/bin/bash
# 1st method
count=0
re='^nameserver'
while read line
do
  if [[ $line =~ $re ]]
  then
    count=$((count+1))
  fi
done </etc/resolv.conf

echo $count

# 2nd method
cat /etc/resolv.conf | grep "^nameserver" | wc -l
