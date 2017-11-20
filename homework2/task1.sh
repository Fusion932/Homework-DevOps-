#!/bin/bash

for a in $@
do
  echo "$a"
done

until [ ${#} -eq 0 ]
do
  echo $1
  shift
done

while [ ${#} -gt 0 ]
do
  echo $1
  shift
done
